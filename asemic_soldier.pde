int canvas = 250;
int count = 0;

void setup() {
  size(250,250);
  noFill();
  strokeJoin(ROUND);
  strokeCap(SQUARE);
  strokeWeight(5);
}

void draw() {
  background(#a59a8f);
  fill(#a59a8f);
  //stroke(#223f56);
  float lastX, lastY, newX, newY;
  float midX1, midX2, midY1, midY2;
  float prob = 1;
  float probpower = 0.99;
  float newprob = 0.3; //odds to start a new line .2
  float vertprob = 0.48; //.5
  float horizprob = 0.48;  // .2
  float circprob = 0.04;  // .3
  lastX = 10 + random(canvas-20);
  lastY = 10 + random(canvas-20);
  while (random(1) < prob) {
    int strokecol = int(random(5));
    if (strokecol == 0) stroke(#6d584d);
    else if (strokecol == 1) stroke(#898268);
    else if (strokecol == 2) stroke(#b1b5ab);
    else if (strokecol == 3) stroke(#61664e);
    strokeWeight(2.25+random(1));
    if (random(1) < newprob) {
      lastX = 10 + random(canvas-20);
      lastY = 10 + random(canvas-20);
    }          
    float styleprob = random(1);
    if (styleprob < vertprob) {
      newX = 10 + random(canvas-20);
      newY = 10 + (random(canvas-20)/2);
      lastY = 125 + (random(canvas-20)/2);
      lastX = newX + (random(-5,5));
      line(newX,newY,lastX,lastY);
      prob = prob * probpower;
    }
    else if (styleprob < vertprob + horizprob) {
      newX = 10 + (random(canvas-20)/2);
      newY = 10 + random(canvas-20);
      lastX = 125 + (random(canvas-20)/2);
      lastY = newY + (random(-5,5));
      line(newX,newY,lastX,lastY);
      prob = prob * probpower;
    }
   else {
      float temp = random(2);
      if (temp < 3) {
        float rad = random(2)+5;
        newX = 10 + random(canvas-20);
        newY = 10 + random(canvas-20);
        strokecol = int(random(5));
        if (strokecol == 0) fill(#6d584d);
        else if (strokecol == 1) fill(#898268);
        else if (strokecol == 2) fill(#b1b5ab);
        else if (strokecol == 3) fill(#61664e);
        circle(newX,newY,rad);
        noFill();
        prob = prob * probpower;
      }
      else if (temp < 3.5) {
        float offset = 30;
        newX = 10 + random(canvas-20);
        newY = 10 + random(canvas-20);
        float X2 = newX + random(-offset, offset);
        float Y2 = newY + random(-offset, offset);
        float X3 = newX + random(-offset, offset);
        float Y3 = newY + random(-offset, offset);
        float X4 = newX + random(-offset, offset);
        float Y4 = newY + random(-offset, offset);
        quad(newX,newY,X2,Y2,X3,Y3,X4,Y4);
        prob = prob * probpower;
      }
      else {
        float offset = 30;
        newX = 10 + random(canvas-20);
        newY = 10 + random(canvas-20);  
        float X2 = newX + random(-offset, offset);
        float Y2 = newY + random(-offset, offset);
        float X3 = newX + random(-offset, offset);
        float Y3 = newY + random(-offset, offset);
        triangle(newX,newY,X2,Y2,X3,Y3);
        prob = prob * probpower;
      }
    }
  }
   saveFrame("asemic###.png");
   count ++;
   if (count > 200) noLoop();
   delay(1000);
}
