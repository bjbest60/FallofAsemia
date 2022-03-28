size(800,400);
background(#F1EEE3);
fill(10);
stroke(10);
rect(0,380,800,400);
for (int i = 1; i < 40; i ++) {
  float w = random(80)+30;
  float h = random(180)+30;
  float s = random(100);
  float x = random(740)+10;
  stroke(s);
  fill(s);  
  float r = random(1);
  if (r < 0.7) {
    rect(x,390-h,w,h);
    r = random(1);
    if (r > 0.5) {
      float th = random(70) + 10;
      triangle(x,390-h,x+w/2,390-h-th,x+w,390-h);
    }
    r = random(1);
    if (r > 0.5) {
      float ch = random(h-40);
      fill(#F1EEE3);
      circle(x+w/2,390-ch,w/4);
      fill(s);
    }
    r = random(1);
    if (r > 0.7) {
      fill(#F1EEE3);
      //rectMode(CENTER);
      noStroke();
      float sh = random(h-30);
      sh = max(30,sh);
      float sw = random((w/4)-5);
      sw = max(sw,10);
      square(x+w/5,390-sh,sw);
      square(x+3*w/5,390-sh,sw);
      //rectMode(CORNERS);
    }
  }
  else {
    triangle(x,390,x+w/2,390-h,x+w,390);
    r = random(1);
    if (r > 0.5) {
      float ch = random(h-40);
      fill(#F1EEE3);
      circle(x+w/2,390-ch,w/4);
      fill(s);
    }
    r = random(1);
    if (r > 0.7) {
      fill(#F1EEE3);
      //rectMode(CENTER);
      noStroke();
      float sh = random(h-30);
      sh = max(30,sh);
      float sw = random((w/4)-5);
      sw = max(sw,10);
      square(x+w/5,390-sh,sw);
      square(x+3*w/5,390-sh,sw);
      //rectMode(CORNERS);
    }
  }
}

for (int i = 1; i < 20; i ++) {
  float w = random(80)+30;
  float h = random(180)+30;
  float s = random(100);
  float x = random(740)+10;
  stroke(s);
  fill(s);  
  float r = random(1);
  if (r < 0.7) {
    rect(x,400-h,w,h);
    r = random(1);
    if (r > 0.5) {
      float th = random(70) + 10;
      triangle(x,400-h,x+w/2,400-h-th,x+w,400-h);
    }
    r = random(1);
    if (r > 0.5) {
      float ch = random(h-40);
      fill(#F1EEE3);
      circle(x+w/2,400-ch,w/4);
      fill(s);
    }
    r = random(1);
    if (r > 0.5) {
      fill(#F1EEE3);
      //rectMode(CENTER);
      noStroke();
      float sh = random(h-30);
      sh = max(30,sh);
      float sw = random((w/4)-5);
      sw = max(sw,10);
      square(x+w/5,400-sh,sw);
      square(x+3*w/5,400-sh,sw);
      //rectMode(CORNERS);
    }
  }
  else {
    triangle(x,400,x+w/2,400-h,x+w,400);
    r = random(1);
    if (r > 0.5) {
      float ch = random(h-40);
      fill(#F1EEE3);
      circle(x+w/2,400-ch,w/4);
      fill(s);
    }
    r = random(1);
    if (r > 0.5) {
      fill(#F1EEE3);
      //rectMode(CENTER);
      noStroke();
      float sh = random(h-30);
      sh = max(30,sh);
      float sw = random((w/4)-5);
      sw = max(sw,10);
      square(x+w/5,400-sh,sw);
      square(x+3*w/5,400-sh,sw);
      //rectMode(CORNERS);
    }
  }
}

fill(#F1EEE3);
noStroke();


for (int i = 1; i < 125; i ++) {
  stroke(#F1EEE3);
  noFill();
  strokeWeight(random(10)+3);
  float x = random(800);
  float y = random(400);
  float x1 = random(-160,160) + x;
  float y1 = random (-140,140) + y;
  float x2 = random(-160,160) + x;
  float y2 = random (-140,140) + y;
  float x3 = random(-160,160) + x;
  float y3 = random (-140,140) + y;
  bezier(x,y,x1,y1,x2,y2,x3,y3);
}

for (int i = 1; i < 1; i ++) {
  fill(#F1EEE3);
  float x = random(800);
  float y = random(400);
  float r = random(30)+10;
  circle(x,y,r);
}

for (int i = 1; i < 1; i ++) {
  float x = random(800);
  float y = random(400);
  float r = random(30)+10;
  square(x,y,r);
}

for (int i = 1; i < 1; i ++) {
  float x = random(800);
  float y = random(400);
  float x1 = random(-60,60) + x;
  float y1 = random (-40,40) + y;
  float x2 = random(-60,60) + x;
  float y2 = random (-40,40) + y;  
  triangle(x,y,x1,y1,x2,y2);
}

strokeCap(SQUARE);
for (int i = 1; i < 100; i ++) {
  stroke(#F1EEE3);
  strokeWeight(random(10)+3);
  float x = random(800);
  float y = random(400);
  float x1 = random(-160,160) + x;
  float y1 = random (-140,140) + y;
  line(x,y,x1,y1);
}

save("buildings.png");
