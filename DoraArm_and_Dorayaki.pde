float baseH = 50;

float arm1W = 15;
float arm1D = 15;
float arm1L = 40;

float arm2W = 10;
float arm2D = 10;
float arm2L = 30;

float arm3W = 5;
float arm3D = 5;
float arm3L = 10;


float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;

float dif = 0.5;



void setup(){
  size(1200, 800, P3D);
  
  camera(600, 300, 500, 400, 200, 420, 1, -1, 0);
    
}

void draw(){
  
  background(#A6C19E);
  
  if(keyPressed){
    if(key == 'f'){
      angle0 = angle0 + dif;
    }
    if(key == 'j'){
      angle0 = angle0 - dif;
    }
    if(key == 'd'){
      angle1 = angle1 + dif;
    }
    if(key == 'k'){
      angle1 = angle1 - dif;
    }
    if(key == 's'){
      angle2 = angle2 + dif;
    }
    if(key == 'l'){
      angle2 = angle2 - dif;
    }
    if(key == 'g'){
      angle3 = angle3 + dif;
    }
    if(key == 'h'){
      angle3 = angle3 - dif;
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
    }
    if(keyCode == DOWN){
      angle1 = angle1 + dif;
      angle2 = angle2 + dif;
    }
    if(keyCode == UP){
      angle1 = angle1 - dif;
      angle2 = angle2 - dif;
    }
    if(keyCode == RIGHT){
      angle2 = angle2 + dif/4;
      angle3 = angle3 + dif/4;
    }
     if(keyCode == LEFT){
      angle2 = angle2 - dif/4;
      angle3 = angle3 - dif/4;
    }
  }
    
   //hontai
   pushMatrix();
   translate(0,200,-200);
   fill(#57A4F5);
   sphere(250);
   popMatrix();
   
   pushMatrix();
   translate(0,-100,-200);
   fill(#57A4F5);
   sphere(230);
   popMatrix();
  
   pushMatrix();
   translate(240,-100,-200);
   fill(255);
   sphere(20);
   popMatrix();
  
 
  pushMatrix();
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH-20);
  fill(#25A7F5);
  noStroke();
  box(20,20,baseH);
    
  //1st link
  //go to 1st joint
  translate(0,0,0);
  rotateX(radians(angle1));  
  translate(0,0,arm1L);
  fill(#3FB4FA);
  noStroke();
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,0);
  rotateX(radians(angle2));  
  translate(0,0,arm2L-10);
  fill(#3FB4FA);
  noStroke();
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
  translate(0,0,0);
  rotateX(radians(angle3));
  translate(0, 0, arm3L+5);
  fill(#F5FBFF);
  //box(arm3W,arm3D,arm3L);
  sphere(10);
  
  popMatrix();

   //dora
   pushMatrix();
   translate(0, -mouseY, mouseX+100);
   fill(#8B6134);
   sphere(20);
   popMatrix();

  //dorayama
    pushMatrix();
    translate(0,-100,200);
    fill(#8B6134);
    sphere(20);
    translate(0,50,0);
    fill(#8B6134);
    sphere(20);
    translate(0,0,50);
    fill(#8B6134);
    sphere(20);
    translate(0,0,10);
    rotateX(90);
    rotateY(90);
    fill(#8B6134);
    text("dorayaki",40,120);
    popMatrix();
}
