//Global Variables
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
//
//Display Geometry
size(604,594);//fullScreen() //Square, Landscape, or Potrait
//
//Populating Variables
pic = loadImage ("XQo9S4t.jpg"); //Dimensions: 604 Width, 594 Height
// Aspect ration
float imageWidthRatio = 604.0/604.0; //must be decimal, larger # for  aspect ratio, similar to style="width:100%"
float imageHeightRatio = 594.0/604.0; //must be decimal, <1 for aspect ratio, similar to style="height:auto"
imageX = width*0;
imageY = height*0;
imageWidth = width*imageWidthRatio;
imageHeight = height*imageHeightRatio;
println(imageWidth);
//Image must be smaller than Canvas ior Display
if ( imageWidth > width ) println("ERROR: Image is too wide");
if ( imageHeight > height ) println ("ERROR: Image is too tall");
//
//Drawing Images
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
