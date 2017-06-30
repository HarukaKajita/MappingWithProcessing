import deadpixel.keystone.*;


Keystone ks;
CornerPinSurface surface;
PGraphics screen;

void setup(){
  size (1440, 900);
  ks = new Keystone(this);
  surface = ks.createCornerPinSurface(1440,900,50);
  screen = createGraphics(1440,900,P3D);
}