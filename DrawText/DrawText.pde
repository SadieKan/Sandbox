//Global Variables
int titleX, titleY, titleWidth, titleHeight;
String title = "Wahoo!";
PFont titleFont;
int textX, textY, textWidth, textHeight;
String text = "Hello World";
PFont textFont;
int bodyX, bodyY, bodyWidth, bodyHeight;
String body = "Hello World";
PFont bodyFont;
color white = #FFFFFF , red = #CE171D, blue = #59A8F5, purple = #C34DFF; 
//
//Display Geomtery
fullScreen(); //displayWidth & displayHeight //size(); 
//Display orientation: landscape, portrait, or square
println("Start of Console");
//
/*Fonts from OS
String[] fontList = PFont.list(); //To list all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
*/
titleFont = createFont ("Cambria", 55); //Verify font exists
//Tools / Create Font / Find Font / Do Not Press "OK", known bug
textFont = createFont ("Vivaldi", 55);
bodyFont = createFont ("Verdana", 55);

//Populating Variables
titleX = width*1/5;
titleY = height*1/10;
titleWidth = width*3/5;
titleHeight = height*1/10;
textX = width*1/5;
textY = height*3/10;
textWidth = width*3/5;
textHeight = height*1/10;
bodyX = width*1/5;
bodyY = height*5/10;
bodyWidth = width*3/5;
bodyHeight = height*1/10;
//
//Laying out text space and tyopgraphical Features
rect(titleX, titleY, titleWidth, titleHeight);
//Drawing Text
fill(red); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, 70); //Change the number until it fits, largest font size
text(title, titleX, titleY, titleWidth, titleHeight);
//
//
fill(white);
rect(textX, textY, textWidth, textHeight);
fill(blue);
textAlign (CENTER, CENTER);
textFont(textFont, 50); 
text(text, textX, textY, textWidth, textHeight);
//
fill(white);
rect(bodyX, bodyY, bodyWidth, bodyHeight);
fill(purple);
textAlign (CENTER, CENTER);
textFont(bodyFont, 50); 
text(body, bodyX, bodyY, bodyWidth, bodyHeight);
