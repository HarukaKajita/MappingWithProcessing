import deadpixel.keystone.*;
 
Keystone ks;
CornerPinSurface surface, sf2;
PGraphics screen, screen2;
PImage img, img2;
 
void setup(){
  size (1440, 900,P3D);
  ks = new Keystone(this);
  surface = ks.createCornerPinSurface(720,450,50);
  sf2     = ks.createCornerPinSurface(720,450,50);
  screen  = createGraphics(720,450,P3D);
  screen2 = createGraphics(720,450,P3D);
  img = loadImage("IMG_0086.jpg");
  img = loadImage("IMG_0087.jpg");
}
 
void draw(){
  background(0);
  screen.beginDraw();
  screen2.beginDraw();
  screen.background(0);
  screen2.background(255);
  screen.image(img,0,0,720,450);
  screen2.image(img2,0,0,720,450);
  screen.endDraw();
  screen2.endDraw();
  surface.render(screen);
  surface.render(screen2);
}

void keyPressed(){
  switch(key){
    case 'c':
      ks.toggleCalibration();
      break;
      
    case 'l':
      ks.load();
      break;
      
    case 's':
      ks.save();
      break;
  }
}