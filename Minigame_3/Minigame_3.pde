PImage restaurant, cannon;

void setup(){
  size(1280,720);
  restaurant = loadImage("restaurant.jpg");
  cannon = loadImage("cannon.png");
}

void draw(){
  image(restaurant, 0,0);
  restaurant.resize(1280,720);
  image(cannon, 50, 100);
}