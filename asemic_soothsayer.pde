int canvas = 250;
int i = 0;

void setup() {
  size(250,250);
  background(#F1EEE3);
  stroke(#292929);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  strokeWeight(5);
}

void draw() {
  background(#0f0f0f);
  stroke(#292929);
  stroke(#f0efe9);
  fill(#605f5d,50);
  float lastX, lastY, newX, newY;
  float midX1, midX2, midY1, midY2;
  float prob = 1;
  float probpower = 0.96; // was .92
  float newprob = 0.3; //odds to start a new line .2
  float bezierprob = 0.7; //.35
  float curveprob = 0.2;  // .2
  float lineprob = 0.05;  // .35
  lastX = 10 + random(canvas-20);
  lastY = 10 + random(canvas-20);
  for (int j = 1; j <= 2; j ++) {
  while (random(1) < prob) {
    fill(#605f5d,50);
    strokeWeight(1.25+random(4)); // was 2.5
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
      float offset = random(2,10);
      if (random(1) < .3) {
        stroke(#d8d7d2);
        bezier(lastX+offset, lastY+offset, midX1+offset, midX2+offset, midY1+offset, midY2+offset, newX+offset, newY+offset);
      }
      stroke(#f0efe9);
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
      if (temp < 4) {
        float rad = random(2)+5;
        newX = 10 + random(canvas-20);
        newY = 10 + random(canvas-20);

        circle(newX,newY,rad);

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
  }
   saveFrame("asemic###.png");
   i ++;
   if (i > 200) noLoop();
   delay(2000);
}
