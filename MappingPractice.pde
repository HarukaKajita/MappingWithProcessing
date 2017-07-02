import deadpixel.keystone.*;
 
Keystone ks;
int size = 3;
CornerPinSurface surface[] = new CornerPinSurface[size];
PGraphics screen[] = new PGraphics[size];
PImage img[] = new PImage[size];
String[] imageName = {"IMG_0086.jpg", "IMG_0087.jpg", "IMG_0090.jpg"};

void setup(){
  size (1440, 900,P3D);
  ks = new Keystone(this);
  for(int i = 0; i<size; i++){
    surface[i] = ks.createCornerPinSurface(720,720,50);
    screen[i] = createGraphics(720,720,P3D);
    img[i] = loadImage(imageName[i]);
  }
}

void draw(){
  background(0);
  for(int i = 0; i<size; i++){
    screen[i]. beginDraw();
    screen[i]. background(0);
    screen[i]. image(img[i],0,0,720,720);
    screen[i]. endDraw();
    surface[i].render(screen[i]);
  }
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