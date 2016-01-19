PImage restaurant, cannon, sushi;
PVector vel;
float x, y, mode;

void setup() {
  size(1280, 720, P3D);

  restaurant = loadImage("restaurant.jpg");
  cannon = loadImage("cannon.png");
  sushi = loadImage("single sushi.png");

  mode = 0;

  cannon.resize(250, 97); 
  restaurant.resize(1280, 720);
}

void draw() {
  if (mode==0){
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("DISSEMINATION", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "Fill up the bellies of the hungry tech students with your powerful sushi cannon!";
    text(des, 250, height/2, 800, height);
  } else{

    image(restaurant, 0, 0);
  
    pushMatrix();
    translate(0, 600);
    rotate(atan2(mouseY-475, mouseX));
    image(cannon, -40, -100);
    popMatrix();
  }
}

void mousePressed() {
  if (mode == 0){
    mode = 1;
  }
  //image(sushi, x, y, z);
}