int canvas = 250;
int i = 0;

void setup() {
  size(250,250);
  background(#F1EEE3);
  stroke(#292929);
  noFill();
  strokeJoin(ROUND);
  strokeCap(ROUND);
  strokeWeight(5);
}

void draw() {
  background(#F1EEE3);
  stroke(#292929);
  float lastX, lastY, newX, newY;
  float midX1, midX2, midY1, midY2;
  float prob = 1;
  float probpower = 0.93; // was .92
  float newprob = 0.3; //odds to start a new line .2
  float bezierprob = 0.5; //.35
  float curveprob = 0.2;  // .2
  float lineprob = 0.15;  // .35
  lastX = 10 + random(canvas-20);
  lastY = 10 + random(canvas-20);
  while (random(1) < prob) {
    strokeWeight(2.25+random(3)); // was 2.5
    if (random(1) < newprob) {
      lastX = 10 + random(canvas-20);
      lastY = 10 + random(canvas-20);
    }          
    float styleprob = random(1);
    if (styleprob < bezierprob) {
      midX1 = 10 + random(canvas-20);
      midX2 = 10 + random(canvas-20);
      midY1 = 10 + random(canvas-20);
      midY2 = 10 + random(canvas-20);
      newX = 10 + random(canvas-20);
      newY = 10 + random(canvas-20);
      bezier(lastX, lastY, midX1, midX2, midY1, midY2, newX, newY);
      lastX = newX;
      lastY = newY;
      prob = prob * probpower;
    }
    else if (styleprob < bezierprob + curveprob) {
      midX1 = 10 + random(canvas-20);
      midX2 = 10 + random(canvas-20);
      midY1 = 10 + random(canvas-20);
      midY2 = 10 + random(canvas-20);
      newX = 10 + random(canvas-20);
      newY = 10 + random(canvas-20);  
      curve(midX1,midY1,lastX,lastY,newX, newY,midX2,midY2);
      lastX = newX;
      lastY = newY;
      prob = prob * probpower;
    }
    else if (styleprob < bezierprob + curveprob + lineprob) {
      newX = 10 + random(canvas-20);
      newY = 10 + random(canvas-20);
      line(lastX,lastY,newX,newY);
      lastX = newX;
      lastY = newY;
      prob = prob * probpower;
    }
    
   else {
      float temp = random(4);
      if (temp < 3) {
        float rad = random(2)+5;
        newX = 10 + random(canvas-20);
        newY = 10 + random(canvas-20);
        fill(#292929);
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
   i ++;
   if (i > 200) noLoop();
   //delay(10);
}
