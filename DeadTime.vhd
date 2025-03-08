library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DeadTime is
	port(pwm_in: in std_logic;	-- PWM de entrada
		  clk: in std_logic;		-- Clock 80MHz
		  switch1, key1, ativador: in std_logic; -- Chaves para aumentar ou diminuir o DeadTime manualmente
		  pwm_out: out std_logic); -- PWM saida com deadtime

end entity;

architecture main of DeadTime is
	constant dt_max: integer:=80;											-- Ciclos de clock máximo para o tempo morto
	signal dt_var_des: integer range 1 to dt_max:=20;				-- Define tempo do deadtime de descida
	signal dt_var_sub: integer range 1 to dt_max:=60;				-- Define tempo do deadtime de subida
	signal pwm_s1: std_logic := '0';										-- pwm in com defasagem +dt_var
	signal pwm_s2: std_logic := '0';										-- pwm in com defasagem -dt_var
	signal pwm_data, pwm_old, pwm_old2, pwm_old3: std_logic:='0';	-- salva o dado anterior de pwm in
	signal start: std_logic:='0';											-- Sinaliza o começo do pwm out após os primeiros periodos
	signal contador1, contador2: integer range 0 to 65535:=0;	-- Armazena o Tempo em nível baixo e Periodo respectivamente de pwm_in

begin

	-- Controlador Deadtime
	process (key1) -- Botão aciona o incremento ou decremento
	begin
		if key1'event and key1='0' then
			if switch1 ='0' then	-- Se chave=0 : Decrementa
				if dt_var_des>5 then
					dt_var_des <= dt_var_des-5;
				end if;
				if dt_var_sub>5 and ativador='0' then	-- Irá controlar apenas o deadtime de descida se Ativador='1'
					dt_var_sub <= dt_var_sub-5;
				end if;
			else						-- Se chave=1 : Incrementa
				if dt_var_des<dt_max-5 then
					dt_var_des <= dt_var_des+5;
				end if;
				if dt_var_sub<dt_max-5 and ativador='0' then	-- Irá controlar apenas o deadtime de descida se Ativador='1'
					dt_var_sub <= dt_var_sub+5;
				end if;
			end if;
		end if;
	end process;
				  
	-- defasagem atrasada
	process (clk)
		variable cont: integer range 0 to dt_max:=0;	-- Contador de Ciclos de Clock gastos
		variable var1: std_logic:='0';  				-- Variável auxiliar para descartar o 1º evento de clock
	begin
		if clk'event and clk='0' then
			if cont=dt_var_des then		-- Verifica se o atraso chegou ao valor definido
				pwm_s1 <= pwm_data;		-- Se sim, atualiza o pwm atrasado com o valor salvo de pwm_in
				cont:=0;
				pwm_old2<=pwm_in;			
			elsif cont=0 then
				if var1='0' then											-- descartar o 1º evento de clock
					var1:='1';
				elsif (pwm_in = not pwm_old2) and var1='1' then	-- verifica se ocorrou um evento em pwm
					if dt_var_des=1 then
						pwm_s1<=pwm_in;
					else
						pwm_data<= pwm_in;									-- salva o valor do pwm_in
						cont := cont+1;										-- conta os ciclos de clock para o atraso
					end if;
				end if;
				pwm_old2<=pwm_in;									-- armazena o valor atual de pwm para o próximo ciclo
			else
				cont := cont+1;											-- conta os ciclos de clock para o atraso
			end if;
		end if;		
	end process;
	
	-- Calcular Frequência do PWM_in   
	process (clk)
		variable cont1, cont2: integer range 0 to 65535:=0;
		variable var1,estouro: std_logic:='0';
		variable amostragem: integer range 1 to 10:=1; -- amostra a frequência a cada 10 períodos
	begin
	if clk'event and clk='0' then
		if var1='0' then
			var1:='1';
			pwm_old<=pwm_in;
		elsif	estouro='0' and pwm_old='1' and pwm_in='0' and amostragem=1 then
			estouro:='1';
			amostragem:=amostragem+1;
			pwm_old<=pwm_in;
			cont1:= cont1+1;
			cont2:= cont2+1;
		elsif	estouro='0' and pwm_old='1' and pwm_in='0' and amostragem>1 then
			if amostragem=10 then
				amostragem:=1;
			else
				amostragem:=amostragem+1;
			end if;
			pwm_old<=pwm_in;
		elsif estouro='1' and pwm_old='0' and pwm_in='0' then
			cont1:= cont1+1;
			cont2:= cont2+1;
			pwm_old<=pwm_in;
		elsif estouro='1' and pwm_old='0' and pwm_in='1' then
			contador1<=cont1;
			cont2:= cont2+1;
			pwm_old<=pwm_in;
		elsif estouro='1' and pwm_old='1' and pwm_in='1' then
			cont1:=0;
			cont2:= cont2+1;
			pwm_old<=pwm_in;
		elsif estouro='1' and pwm_old='1' and pwm_in='0' then
			contador2<=cont2;
			pwm_old<=pwm_in;
			estouro:='0';
			cont2:=0;
			start<='1';
		else
			pwm_old<=pwm_in;
		end if;
	end if;
	end process;
					  
	-- defasagem adiantada
	process (clk)
		variable cont: integer range 0 to 65535:=0;
	begin
		if clk'event and clk='0' then
			if start='1' then								-- Inicia o pwm adiantado após obter a freq.
				if cont=((contador2)-dt_var_sub-1) then		-- Verifica se chegou na borda de descida adiantada
					pwm_s2 <= '0';
					cont:=0;
				elsif cont=((contador1)-dt_var_sub-1) then	 -- Verifica se chegou na borda de subida adiantada
					pwm_s2 <= '1';
					cont := cont+1;
				elsif cont=0 then
					if (pwm_old3='1' and pwm_in = '0') then -- Detecta borda de descida em pwm_in			
						cont := cont+1;							 -- conta os ciclos de clock
					end if;
				else
					cont := cont+1;								 -- conta os ciclos de clock
				end if;
			end if;
			pwm_old3<=pwm_in;				   				 -- armazena o valor atual de pwm para o próximo ciclo
		end if;
	end process;
		
	-- Lógica saida pwm 
	WITH pwm_s1 SELECT -- Seletor saída pwm
	pwm_out <= pwm_s2 when '0',
				  pwm_s1 when others;
	
end main;