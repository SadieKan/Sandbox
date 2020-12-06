int x, y, rectWidth, rectHeight;
color black=#000000, white=#FFFFFF, blue=#81D8FA, purple=#AB81FA, blueNight=#6BB1B4, purpleNight=#9F78A7;
int thin, thick;
//
//size(900, 400); 
fullScreen(); //displayWidth, displayHeight
//println("Monitor Display Width", displayWidth, "and Display Height", displayHeight);
//
x = width*1/4;
y = height*1/4;
rectWidth = width*1/2;
rectHeight = height*1/2;
thin = width*1/100;
thick = thin*2;
//
background(black);
stroke(purpleNight); //ink colour
strokeWeight(thin);
fill(blueNight);
//fill(107, 177, 180); //blueNight //RGB
//fill( random(255), random(255), random(255) ); //RGB as random(), 0-255
//
rect(x, y, rectWidth, rectHeight);
//
//Reset Defaults
stroke(black); //Black
strokeWeight(1); //Pixel Value
fill(white); //White
