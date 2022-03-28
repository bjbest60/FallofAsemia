int canvas = 250;
int i = 0;
int num_steps;
float x,y,newX,newY;


void setup() {
  size(250,250);
  background(#fffff0);
  strokeJoin(ROUND);
  strokeCap(ROUND);
}


void upright() {
  x = random(10,150);
  y = random(125,245);
  num_steps = int(random(3,15));
  int i = 0;
  x = random(20,230);
  y = random(20,230);
  float oldX = x;
  float oldY = y;
  beginShape();
  curveVertex(x,y);
  while (i < num_steps) {
    i ++;
    newX = random(20,230);
    newY = random(20,230);
    curveVertex(x,y);
    strokeWeight(random(2.5)+.75);
    if (random(1) < .5) line(x,y,newX,newY);
    fill(#e3baba,50);
    if (random(1) < .1) circle(random(20,230),random(20,230),random(2,8));
    noFill();
    x = newX;
    y = newY;
  }
  curveVertex(x,y);
  curveVertex(oldX,oldY);
  endShape();
    
}

void draw() {
  background(#decea4);
  stroke(#ab3f3e);
  stroke(#893232);
  stroke(#660000);
  fill(#e3baba,5);
  float prob = 1;
  float probpower = 0; // was .92
  while (random(1) < prob) {
    upright();
    prob = prob * probpower;    
    }
   saveFrame("asemic###.png");
   i ++;
   if (i > 200) noLoop();
}
