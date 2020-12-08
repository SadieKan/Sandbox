//Global Variables
PImage pic1, pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float picImageWidthRatio1, picImageHeightRatio1;
float picX1, picY1, picWidth1, picHeight1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
float picImageWidthRatio2, picImageHeightRatio2;
float picX2, picY2, picWidth2, picHeight2;
color red=#FF0004; //Show where image is too short
//
fullScreen(); //size(900, 680), displayWidth & displayHeight //Landscape presentation
//
pic1 = loadImage("roses.jpg"); //Dimension: 564 Width, 564 Height //Square presentation
pic2 = loadImage("teacup-flowers.jpg"); //Dimension: 564 Width, 564 Height //Square
//
rectXPic1 = width*1/3;
rectYPic1 = height*0;
rectWidthPic1 = width*1/3; //usually the longer side in rectangle landscape presentation, from size()
rectHeightPic1 = height*1/2; //shorter side in rectangle landscape presentation, from size()
picImageWidthRatio1 = 564.0/564.0; //equals to 1 (similar to style="width:100%")
picImageHeightRatio1 = 564.0/564.0; //usually the shorter side divided by the longer, but this image is a square
picX1 = rectXPic1;
picY1 = rectYPic1;
picWidth1 = rectWidthPic1 * picImageWidthRatio1; 
picHeight1 = picWidth1 * picImageHeightRatio1; 
if (picHeight1 > rectHeightPic1) println("Image #1 display issues"); //dimension might be 'cut-off'
//
rectXPic2 = width*1/3;
rectYPic2 = height*1/2;
rectWidthPic2 = width*1/3; //longer side in rectangle landscape presentation, from size()
rectHeightPic2 = height*1/2; //shorter side in rectangle landscape presentation, from size()
picImageWidthRatio2 = 564.0/564.0; //should equal 1
picImageHeightRatio2 = 564.0/564.0; //Image height is usually shorter, <1 (but this pic is a square)
picX2 = rectXPic2;
picY2 = rectYPic2;
picWidth2 = rectWidthPic2 * picImageWidthRatio2; //remains longer side, "*1"
picHeight2 = picWidth2 * picImageHeightRatio2; //becomes shorter side, "*<1"
if (picHeight2 > rectHeightPic2) println("Image #2 display issues"); //dimension might be 'cut-off'
//
fill(red);
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Square Presentation
image(pic1, picX1, picY1, picWidth1, picHeight1);
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Square Presentation
image(pic2, picX2, picY2, picWidth2, picHeight2);
