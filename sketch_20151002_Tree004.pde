float posX, posY;
float posX2, posY2;
float updateX, updateY;
float updateX2, updateY2;
float thickness;
float junction = 0;

void setup () {
  size (800, 800);
  background (0);
  frameRate (60);
  
  posX = width / 2;
  posY = height;
  posX2 = width / 2;
  posY2 = height;
  updateX = random (-0.1, 0.1);
  updateY = random (-1, -3);
  updateX2 = random (-0.1, 0.1);
  updateY2 = random (-1, -3);
    
  thickness = 8;
}

void draw () {
  
  //background (0);
  
  
  
  if (thickness > 1) {
    if (junction < 5) {
      if (frameCount % 50 ==0) {
        updateX = random (-0.4, 0.4);
        updateY = random (-1, -3);
        updateX2 = random (-0.4, 0.4);
        updateY2 = random (-1, -3);
        thickness -= 0.5f;
        
        junction += random (1, 2);
      }
      posX += updateX;
      posY += updateY;
      posX2 += updateX;
      posY2 += updateY;
      println(posX + "  " + posX2);
      noStroke();
      fill(150);
      ellipse(posX, posY, thickness, thickness);
    } else {
      if (frameCount % 50 ==0) {
        updateX = random (-0.7, 0.1);
        updateY = random (-1, -3);
        updateX2 = random (-0.1, 0.7);
        updateY2 = random (-1, -3);
        thickness -= 0.5f;
        
        junction += random (1, 2);
      }
      posX += updateX;
      posY += updateY;
      posX2 += updateX2;
      posY2 += updateY2;
      println(posX + "  " + posX2);
      
      noStroke();
      fill(150);
      ellipse(posX, posY, thickness, thickness);
      fill(250);
      ellipse(posX2, posY2, thickness - 2, thickness - 2);
    }
  }
}


void branch () {
  if (thickness > 1) {
    if (junction < 5) {
      if (frameCount % 50 ==0) {
        updateX = random (-0.4, 0.4);
        updateY = random (-1, -3);
        updateX2 = random (-0.4, 0.4);
        updateY2 = random (-1, -3);
        thickness -= 0.5f;
        
        junction += random (1, 2);
      }
      posX += updateX;
      posY += updateY;
      posX2 += updateX;
      posY2 += updateY;
      println(posX + "  " + posX2);
      noStroke();
      fill(150);
      ellipse(posX, posY, thickness, thickness);
    } else {
      if (frameCount % 50 ==0) {
        updateX = random (-0.7, 0.1);
        updateY = random (-1, -3);
        updateX2 = random (-0.1, 0.7);
        updateY2 = random (-1, -3);
        thickness -= 0.5f;
        
        junction += random (1, 2);
      }
      posX += updateX;
      posY += updateY;
      posX2 += updateX2;
      posY2 += updateY2;
      println(posX + "  " + posX2);
      
      noStroke();
      fill(150);
      ellipse(posX, posY, thickness, thickness);
      fill(250);
      ellipse(posX2, posY2, thickness - 2, thickness - 2);
    }
  }
}