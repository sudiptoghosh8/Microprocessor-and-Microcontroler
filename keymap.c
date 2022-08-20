#include<EEPROM>
#include<Survo.h>
#include<LiquidCrystal.h>
# include<Keypad.h>

const int rs=12, en=11, d4=5,d5=4,d6=3,d7=2;
LiquidCrystal Lcd(rs,en,d4,d5,d6,d7);

Survo mysurvo;

char keypressed;
char code[]={"1","2","3","4"};

short a=0,i=0,j=0;

const byte ROWS=4, COLMS=4;

char hexakeys[ROWS][COLMS]={{'1','2','3','A'},{'4','5','6','B'},{'7','8','9','C'},{'*','0','#','D'}}

byte rowpins[ROWS] = {10,9,8,7};
byte colpins[COLMS] = {A0,A1,A2,A3};

Keypad mykeypad=keypad(makekeymap(hexakeys),rowpins,colpins,4,COLMS);
