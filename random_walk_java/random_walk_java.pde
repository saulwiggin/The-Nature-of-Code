void setup() {
  size(640,360);
  w = new walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
