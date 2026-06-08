float x = width / 2;
float y = height / 2;
int r = 180;

void Takumi(){
  fill(255, 10);
  noStroke();
  rect(0, 0, 600, 400);
  noFill();
  x = x + random(-2, 2);
  y = y + random(-2, 2);
  stroke(random(255), random(255), 255);
  ellipse(x, y, r, r);
}
