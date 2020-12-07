//Global Variables
int titleX, titleY, titleWidth, titleHeight;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
String title = "Wahoo!";
PFont titleFont;
color red = #CE171D; 
color white = #FFFFFF;
PImage pic;
float imageWidthRatio, imageHeightRatio;
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
pic = loadImage("flowers-563-188.jpg"); //Dimension: 564 Width, 703 Height
//
//Populating Variables
titleX = width*1/5;
titleY = height*1/10;
titleWidth = width*3/5;
titleHeight = height*1/10;
imageWidthRatio = 563.0/563.0; //must be decmals due to float, larger # for aspect ratio
imageHeightRatio = 188.0/563.0; //must be decmals due to float, <1 for aspect ratio
imageStartWidth = width*0;
imageStartHeight = height*1/2;
imageWidth = width*imageWidthRatio; //Aspect Ratio
imageHeight = width*imageHeightRatio; //Aspect Ratio
//
//Laying out text space and tyopgraphical Features
rect(titleX, titleY, titleWidth, titleHeight);
//Drawing Text
fill(red); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, 50); //Change the number until it fits, largest font size
text(title, titleX, titleY, titleWidth, titleHeight);
fill(white); //reset
//
//Space for more rectangles below, with reset values
rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight); 
