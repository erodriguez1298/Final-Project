PImage restaurant, cannon, sushi;
PVector vel;
float x, y, z;

void setup(){
  size(1280,720, P3D);
  restaurant = loadImage("restaurant.jpg");
  cannon = loadImage("cannon.png");
  sushi = loadImage("cannon.png");
  vel = PVector.random3D();
  x = mouseX + vel.x;
  y = mouseY + vel.y;
  z = vel.z;
}

void draw(){
  image(restaurant, 0,0);
  restaurant.resize(1280,720);

  image(cannon, 40, 550);
  cannon.resize(300, 117);     
}

void mousePressed(){
  image(sushi, x, y, z);
  
}