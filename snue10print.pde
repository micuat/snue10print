float l = 50;
float x = 0;
float y = 0;

void setup() {
  size(800, 800, P3D);
  background(255);
  frameRate(30);
}

void draw() {
  colorMode(HSB, 255, 255, 255);
  //stroke(0);
  fill(map(x, 0, width, 0, 255), 255, 255);
  //strokeWeight(3);
  noStroke();
  lights();
  translate(x, y);
  if(random(1) > 0.5) {
    //line(l, 0, 0, l); // slash
    //line(l/2, 0, l/2, l);
    rotate(PI / 4);
    box(l / 4, l, l);
  }
  else {
    //line(0, 0, l, l); // backslash
    //line(0, l/2, l, l/2);
    rotate(-PI / 4);
    box(l / 4, l, l);
  }
    
  x += l;
  if(x >= width) {
    x = 0;
    y += l;
  }
}
