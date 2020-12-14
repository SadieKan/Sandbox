//Global Variables
//Prototyping exit with key Board
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, pink=#F2C9DF, blue=#50DDFF, resetWhite=#FFFFFF;
//blue is not Night Mode b/c blue value is high

void setup() {
  fullScreen(); //portrait
  //Population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
}//End setup()

void draw() {
  println(mouseX, mouseY);
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) { 
    buttonColour = blue;
  } else { 
    buttonColour = pink;
  } //End If
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetWhite);
}//End draw()

void keyPressed() {
  if (key == 'q' || key == 'Q') exit();
}//End keyPressed()

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) exit();
}//End mousePressed()
