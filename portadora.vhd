ENTITY portadora IS
  PORT (clk_port    :  IN  BIT;   
        port_comp  :  OUT INTEGER RANGE 255 DOWNTO 0);     
END portadora;

ARCHITECTURE test OF portadora IS
	SIGNAL count : INTEGER :=0; 
BEGIN
	portadora_proc : PROCESS (clk_port)
	begin
		IF clk_port'event and clk_port='0' then
			IF count=255 THEN 
				count<=0;
			ELSE
				port_comp <= count;
				count<=count+1;
			END IF;
		END IF;
	END PROCESS portadora_proc;

END test;