----------------------------------------------------------------------------------
--Developed By : Jacob Seal
--sealenator@gmail.com
--07-28-2021
--filename: craps_types_pkg.vhd
--package craps_types_pkg
--
--********************************************************************************
--general notes:
--Package file containing all Constants, Components, and functions 
--      used for VGA synthesis.
--********************************************************************************
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.bitmaps_pkg.all;

package VGA_pkg is

  -----------------------------------------------------------------------------
  -- Constants 
  -----------------------------------------------------------------------------
   
     --array containing all large dice bitmaps
--   type t_large_dicemap is array (1 to 6) of t_large_dice_bitmap;
--   constant c_dicemap : t_large_dicemap :=
--   (
--       large_dice_bitmap_1,
--       large_dice_bitmap_2,
--       large_dice_bitmap_3,
--       large_dice_bitmap_4,
--       large_dice_bitmap_5,
--       large_dice_bitmap_6
--   );


    --test text generation on the VGA
    type t_stringmap is array (0 to 4) of string(1 to 10);
        constant stringmap : t_stringmap :=
        (
            ("Empty     "),
            ("Test      "),
            ("Text      "),
            ("Generation"),
            ("On the VGA")
        );

    --x and y position arrays
    type t_x_pos_map is array (0 to 4) of integer;
        constant c_x_pos_map : t_x_pos_map :=
        (
            (50),
            (100),
            (300),
            (400),
            (500)
        );

    type t_y_pos_map is array (0 to 4) of integer;
        constant c_y_pos_map : t_y_pos_map :=
        (
            (50),
            (100),
            (200),
            (300),
            (400)
        );
  


  -----------------------------------------------------------------------------
  -- Component Declarations
  -----------------------------------------------------------------------------
  

  -----------------------------------------------------------------------------
  -- Function Declarations
  -----------------------------------------------------------------------------
    function int_to_str (
        int : in integer) 
        return string;

    function char_to_str (
        char : in character) 
        return string;    

    

  
end package VGA_pkg;  

package body VGA_pkg is

    --accepts a single character(from ASCII VALUES) and returns it as a string
    function char_to_str (
        char : in std_logic_vector(7 downto 0)) 
        return string is 

        variable a : std_logic_vector(7 downto 0);
        variable r : string( 1 to 1);
    begin

        a := char;

        case a is
            when X"30"      => r := "0";
            when X"31"      => r := "1";
            when X"32"      => r := "2";
            when X"33"      => r := "3";
            when X"34"      => r := "4";
            when X"35"      => r := "5";
            when X"36"      => r := "6";
            when X"37"      => r := "7";
            when X"38"      => r := "8";
            when X"39"      => r := "9";
            when X"61"      => r := "a";
            when X"62"      => r := "b";
            when X"63"      => r := "c";
            when X"64"      => r := "d";
            when X"65"      => r := "e";
            when X"66"      => r := "f";
            when X"67"      => r := "g";
            when X"68"      => r := "h";
            when X"69"      => r := "i";
            when X"6A"      => r := "j";
            when X"6B"      => r := "k";
            when X"6C"      => r := "l";
            when X"6D"      => r := "m";
            when X"6E"      => r := "n";
            when X"6F"      => r := "o";
            when X"70"      => r := "p";
            when X"71"      => r := "q";
            when X"72"      => r := "r";
            when X"73"      => r := "s";
            when X"74"      => r := "t";
            when X"75"      => r := "u";
            when X"76"      => r := "v";
            when X"77"      => r := "w";
            when X"78"      => r := "x";
            when X"79"      => r := "y";
            when X"7A"      => r := "z";
            when X"41"      => r := "A";
            when X"42"      => r := "B";
            when X"43"      => r := "C";
            when X"44"      => r := "D";
            when X"45"      => r := "E";
            when X"46"      => r := "F";
            when X"47"      => r := "G";
            when X"48"      => r := "H";
            when X"49"      => r := "I";
            when X"4A"      => r := "J";
            when X"4B"      => r := "K";
            when X"4C"      => r := "L";
            when X"4D"      => r := "M";
            when X"4E"      => r := "N";
            when X"4F"      => r := "O";
            when X"50"      => r := "P";
            when X"51"      => r := "Q";
            when X"52"      => r := "R";
            when X"53"      => r := "S";
            when X"54"      => r := "T";
            when X"55"      => r := "U";
            when X"56"      => r := "V";
            when X"57"      => r := "W";
            when X"58"      => r := "X";
            when X"59"      => r := "Y";
            when X"5A"      => r := "Z";
            when X"20"      => r := " ";--space bar
            when X"24"      => r := "$";--dollar sign
            when others     => r := "?";
        end case;

        return r;
    
    end char_to_str;        

    --accepts an integer 0 through 12 and returns it as a string value
    function int_to_str (
        int : in integer) 
        return string is

        variable a : natural := 0;
        variable r : string(1 to 2);

    begin
        a := abs (int);

        case a is
            when 0    => r := "00";
            when 1    => r := "01";
            when 2    => r := "02";
            when 3    => r := "03";
            when 4    => r := "04";
            when 5    => r := "05";
            when 6    => r := "06";
            when 7    => r := "07";
            when 8    => r := "08";
            when 9    => r := "09";
            when 10    => r := "10";
            when 11    => r := "11";
            when 12    => r := "12";
            when others => r := "??";
        end case;

        
        	return r;
         
    end int_to_str;
    
end package body VGA_pkg;




