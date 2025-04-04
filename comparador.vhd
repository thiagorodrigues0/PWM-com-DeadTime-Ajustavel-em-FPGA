ENTITY comparador IS
  PORT (in_ninv    :  IN  INTEGER RANGE 255 DOWNTO 0;   
        in_inv  :  IN  INTEGER RANGE 255 DOWNTO 0;
		  out_comp : OUT BIT);     
END comparador;

ARCHITECTURE test OF comparador IS
 
BEGIN
	compare : PROCESS (in_ninv,in_inv)
	begin
			IF in_ninv>in_inv THEN 
				out_comp <= '1';
			ELSE 
				out_comp <= '0';
			END IF;
	END PROCESS compare;

END test;