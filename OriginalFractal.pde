void setup() {
  size(1080,720);
}

void draw() {
  background(0);
  fractal(20,700,500);
}

void fractal(float x, float y, float z) {
  if (z <= 20) {
    stroke(255);
    //noFill();
    beginShape();
  for(int i = 0; i < 6; i++) {
    float angle = i * 2 * PI / 6;
    vertex(x + z*cos(angle),y + z*sin(angle));
  }
  endShape(CLOSE);
  }
  else {
    fractal(x,y,z/2);
    fractal(x+z/1.25,y-z/2.2,z/2);
    //fractal(x+z/1.25,y+z/2.2,z/2);
    //fractal(x-z/1.25,y+z/2.2,z/2);
  }
}
  
