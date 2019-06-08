
void setup() {
  size(800, 800,P3D);
  //frameRate(5);
  background(0, 0, 70);
}
int karte=1;
int feld=10;  //3,4,5,6       
int xkarte=0;
int ykarte=0;
int zkarte=0;
int mapfeld=1;
float  mouseovery;
float  mouseoverx;
int[] x= new int[feld+1];
int[] y= new int[feld+1];
int[] z= new int[feld+1];
int qxkarte=2;
int qykarte=2;
int qzkarte=2;
int once=0;
void draw() {
  mouseovery = mouseY;
  mouseoverx = mouseX;
  
  


      karte=420/feld;


rotateX(160);
rotateY(160);
rotateZ(160);
  if (keyPressed) {
   
      if (key == 'a' ) {


xkarte=-1;
ykarte=0;
zkarte=0;
        
      }
      if (key == 'd' ) {
      
xkarte=1;
ykarte=0;
zkarte=0;

      }
      if (key == 'w' ) {
     
       xkarte=0;
ykarte=-1;
zkarte=0;

        
      }
      if (key == 's' ) {
     
  xkarte=0;
ykarte=1;
zkarte=0;
      }
      if (key == 'x' ) {
        
     xkarte=0;
 ykarte=0;
 zkarte=1;
 
      }
           if (key == 'e' ) {
       
    xkarte=0;
ykarte=0;
 zkarte=-1;
    
        
      }
     
      

    }
    
    delay(180);
          qxkarte=qxkarte+xkarte;
         qykarte=qykarte+ykarte;
         qzkarte=qzkarte+zkarte;
      if(qzkarte>=feld)qzkarte=feld;
      
     if(qxkarte>=feld)qxkarte=feld;
     if(qykarte>=feld)qykarte=feld;
     
        if(qzkarte<=0)qzkarte=0;
      
     if(qxkarte<=0)qxkarte=0;
     if(qykarte<=0)qykarte=0;
     
         stroke(255, 100, 255, 255);
translate(200+karte*qxkarte, 200+karte*qykarte, karte*qzkarte );
     box(karte); 
    
    
     x[qxkarte]=1;
        x[qxkarte-xkarte]=0;
        
          y[qykarte]=1;
        y[qykarte-ykarte]=0;
          z[qxkarte]=1;
        z[qzkarte-zkarte]=0;
        
        
        
  
}
