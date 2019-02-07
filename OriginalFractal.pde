
void setup() {
  size(500,500);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  dia(width/2,height/2,300);
}

void dia(float x, float y, float z) {
  ellipse(x,y,z,z);
  if (z > 10) {
    z *= 0.5;
    dia(x,y,z);
    dia(x-z,y,z/2);
    dia(x+z,y,z/2);
    dia(x,y+z,z/2);
    dia(x,y-z,z/2);
  }
}
