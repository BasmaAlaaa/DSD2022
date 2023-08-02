library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_signed.all;

entity amoryy is 
port(basma,hana,nada,clk: in std_logic ;

zain:out std_logic;
led1: buffer std_logic_vector (0 TO 6));
end amoryy ;

architecture beso of amoryy IS
signal hamza: integer:=0;
signal ticks: integer:=0;
signal freq: integer:=7500000;
BEGIN
process(clk)
BEGIN
if rising_edge(clk) then
if ticks=freq-1 then
ticks<=0;
--entering
if(basma ='0')then
 if hamza=9 then
    hamza<=9;
	else
hamza <=hamza+1;	
end if;
end if;
--exiting
if(hana ='0')then
 if hamza=0 then
    hamza<=0;
	else
hamza <=hamza-1;	
end if;
end if;
--motor
if nada='1' then
zain<='1';
else
zain<='0';
end if;


CASE hamza IS
  when 0=>led1 <="0000001" ;
  when 1=>led1 <="1001111" ;
  when 2=>led1 <="0010010" ;
  when 3=>led1 <="0000110" ;
  when 4=>led1 <="1001100" ;
  when 5=>led1 <="0100100" ;
  when 6=>led1 <="0100000" ;
  when 7=>led1 <="0001111" ;
  when 8=>led1 <="0000000" ;
  when 9=>led1 <="0001100" ;
  when others => led1 <= led1;
end case;
else 
ticks<=ticks+1;

end if;
end if;
end process;
end beso;

