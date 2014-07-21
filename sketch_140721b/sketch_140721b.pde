void branch(float len) {
  float theta = random(0,PI/3);
 
  line(0, 0, 0, -len);
  translate(0, -len);
  len *= 0.66;
  if (len > 2) {
    pushMatrix();
    rotate(theta);
    branch(len);
    popMatrix();
    pushMatrix();
    rotate(-theta);
    branch(len);
    popMatrix();
  }
}
