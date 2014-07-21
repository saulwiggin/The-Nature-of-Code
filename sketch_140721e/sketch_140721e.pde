 void update() {

    PVector mouse = new PVector(mouseX,mouseY);
    // Step 1: Compute direction
    PVector dir = PVector.sub(mouse,location);

    // Step 2: Normalize
    dir.normalize();

    // Step 3: Scale
    dir.mult(0.5);

    // Step 4: Accelerate
    acceleration = dir;

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);

  }
