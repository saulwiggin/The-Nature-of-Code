void draw() {
  background(255);

  PVector wind = new PVector(0.001,0);
  // We could scale by mass to be more accurate.
  PVector gravity = new PVector(0,0.1);

  for (int i = 0; i < movers.length; i++) {

    float c = 0.01; //[bold]
    PVector friction = movers[i].velocity.get(); //[bold]
    friction.mult(-1); //[bold]
    friction.normalize(); //[bold]
    friction.mult(c); //[bold]

    // Apply the friction force vector to the object.
    movers[i].applyForce(friction); //[bold]
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }

}
