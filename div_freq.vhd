ENTITY div_freq IS
  PORT (clk_pwm    :  IN  BIT;   
        freq_onehz  :  BUFFER  BIT);     
END div_freq;

ARCHITECTURE test OF div_freq IS
	SIGNAL count : INTEGER :=0; 
BEGIN
	onehz : PROCESS (clk_pwm)
	begin
		IF clk_pwm'event and clk_pwm='0' then
			IF count=2 THEN 
				count<=0;
				freq_onehz <= not freq_onehz;
			ELSE 
				count<=count+1;
			END IF;
		END IF;
	END PROCESS onehz;

END test;