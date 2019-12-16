int counter = 0;
int background = 255;

void setup() {
  size(400,400);
  background(255);
  
  strokeWeight(4);
  fill(255,0,0);
  stroke(0,0,255);
  rectMode(CORNER);
  
  rectMode(CORNERS);
  rect(0,0,10,10);
  
  rectMode(CENTER);
  rect(200,200,10,10); 
}


void draw() {
  if ( counter == 500){
    background(background);
    counter = 0;
    }
 counter++;
}

void mouseDragged() {
  line(mouseX,mouseY, pmouseX,pmouseY);
}

void keyPressed() {
  if (key == 'c') {
    float r = random(255);
    float g = random(255);
   float b = random(255);
    stroke(r,g,b);
  } 
  
  if (key == 'e') {
   stroke(background);
   strokeWeight(50);
  }
}

void keyReleased (){
  if (key == 'e') {
    float r = random(255);
    float g = random(255);
   float b = random(255);
    stroke(r,g,b);
    
  }
}
