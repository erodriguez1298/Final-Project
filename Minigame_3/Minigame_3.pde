PImage restaurant, cannon, sushi;
PVector vel;
float x, y;

void setup(){
  size(1280,720, P3D);
  restaurant = loadImage("restaurant.jpg");
  cannon = loadImage("cannon.png");
  sushi = loadImage(".png");
  
  cannon.resize(300, 117); 
  restaurant.resize(1280,720);
}

void draw(){
  image(restaurant, 0,0);

  pushMatrix();
  translate(40,550);
  rotate(atan2(mouseY-550,mouseX-40));
  image(cannon, -25, 50);
  popMatrix();
}

void mousePressed(){
  //image(sushi, x, y, z);
  
}