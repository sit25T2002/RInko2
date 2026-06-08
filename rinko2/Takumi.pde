float Tx = width / 2;
float Ty = height / 2;
int Tr = 180;

void Takumi(){
  color c = get(width, 0);
  fill(c);
  noStroke();
  rect(0, 0, 600, 400);
  noFill();
  Tx = Tx + random(-20, 20);
  Ty = Ty + random(-20, 20);
  stroke(random(255), random(255), random(255));
  ellipse(Tx, Ty, Tr, Tr);
}
