//Assignent 2a: Media Arts & Practice 404 Tactical Media
//McKenzie Carlile

PImage elvis;
PImage grid;
PFont font;
int x = 15;
int savedTime;
int totalTime = 100;

void setup () {
  size (800, 150, P2D);
  elvis = loadImage ("elvis.png");
  grid = loadImage ("grid.png");
  // The font must be located in the sketch's 
  // "data" directory to load successfully
  font = loadFont("ChessType-100.vlw");
  textFont(font, 100);

  savedTime = millis();
}

void draw () {
  background (88, 117, 121);
  fill (88, 117, 121);
  image (grid, 150, 15);
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    x = x-5;
    savedTime = millis();
  }
  text("elvis lives !", x, 100);
  noStroke();
  rect(0, 0, 150, 150);
  image (elvis, 15, 4);
}

//works cited

//Elvis Illustration copyright Miguel Gonzalez
//retrieved from http://www.m-lon.com/#!product/prd2/1395441641/pixel-art---elvis-presley-(vegas)

