void setup(){
   size(700,600);
   background(255,255,255);
   noLoop();
}
void draw(){
   boolean shift = true;
  for(int y = 0; y <= 740; y+=20)
  {
    for(int x = -20; x <= 700; x+=50)
    {
      if(shift == true)
        scale(x+25,y);
       else
         scale(x,y);
    }
      if(shift == true)
        shift = false;
       else
         shift = true;
  }
}  

void scale (int x, int y){
 int diam = 0;
float r = 255;
noFill();
while(diam < 30){
  stroke(r,0,0);
  fill(153,25,3);
  beginShape();
  curveVertex(-15+x,650-y);
  curveVertex(-15+x,650-y);
  curveVertex(10+x,680-y);
  curveVertex(40+x,700-y);
  curveVertex(65+x,680-y);
  curveVertex(90+x,650-y);
  curveVertex(90+x,650-y);
  endShape();
  diam++;
  r+=255/30.0;
}
}
