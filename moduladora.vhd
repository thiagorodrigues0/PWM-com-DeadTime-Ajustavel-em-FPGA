library ieee;
use ieee.std_logic_1164.all;

ENTITY moduladora IS
  PORT (switch2, key2: in std_logic; -- Chaves para aumentar ou diminuir o Duty Cycle manualmente
		  mod_out  :  OUT  INTEGER RANGE 255 DOWNTO 0);     
END moduladora;

ARCHITECTURE test OF moduladora IS
	signal mod_aux: integer range 255 downto 0:=128;
BEGIN
	mod_out <= mod_aux;
	
	process (key2) -- Botão aciona o incremento ou decremento
	begin
		if key2'event and key2='0' then
			if switch2 ='0' then	-- Se chave=0 : Decrementa
				if mod_aux>10 then
					mod_aux <= mod_aux-10;
				end if;
			else						-- Se chave=1 : Incrementa
				if mod_aux<245 then
					mod_aux <= mod_aux+10;
				end if;
			end if;		
		end if;
	end process;
	
END test;