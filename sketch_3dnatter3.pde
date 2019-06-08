
void setup() {
  size(800, 800,P3D);
  //frameRate(5);
  background(0, 0, 70);
}
int karte=1;
int feld=12;  //3,4,5,6       
int xkarte=0;
int ykarte=0;
int zkarte=0;
int mapfeld=1;
float  mouseovery;
float  mouseoverx;
int[] x= new int[feld+1];
int[] y= new int[feld+1];
int[] z= new int[feld+1];




int qxkarte=5;
int qykarte=5;
int qzkarte=5;
int axkarte=2;
int aykarte=2;
int azkarte=2;
int bxkarte=2;
int bykarte=2;
int bzkarte=2;


int once=0;
void draw() {
  mouseovery = mouseY;
  mouseoverx = mouseX;
  
  


      karte=420/feld;
pushMatrix();
fill(0);
rect(0,0,800,800);
popMatrix();
rotateX(5);
rotateY(2);
rotateZ(2);




  if (keyPressed) {
   
      if (key == 'e' ) {


xkarte=-1;
ykarte=0;
zkarte=0;
 
        

      
      }
      if (key == 'c' ) {
      
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
      if (key == 'd' ) {
        
     xkarte=0;
 ykarte=0;
 zkarte=1;
  
   
   
      }
           if (key == 'a' ) {
       
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
     
               
          x[qxkarte]=1;
   y[qykarte]=1;
    
 z[qzkarte]=1;
    
     
   
   
    
    
    
   
         
 
    //if(xkarte!=0)
     
       //x[qxkarte-xkarte]=0;
      //   if(ykarte!=0)
        
     // y[qykarte-ykarte]=0;
   //   if(zkarte!=0)
        
     //   z[qzkarte-zkarte]=0;
   /* pushMatrix();  


translate(100+karte*qxkarte, 250+karte*qykarte, karte*qzkarte );


stroke(255, 100, 5, 250);

fill(255);
     box(karte); 
    popMatrix();    
      
          
          
          
        */  
          
        azkarte=0;axkarte=-1;aykarte=0;
        
        
       while(axkarte!=feld&&aykarte!=feld&&azkarte!=feld){
       // if(z[feld])
       axkarte++;
       
        if(axkarte==feld){axkarte=0;aykarte++;}
         if(aykarte==feld){aykarte=0;axkarte=0;azkarte++;}
         //if(azkarte==feld+1){axkarte=feld;aykarte=feld;azkarte=feld;}

            
        
pushMatrix();  


translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
stroke(255, 100, 255, 30);

noFill();
     box(karte); 
    popMatrix(); 
     
       }
       
       
         bzkarte=0;bxkarte=-1;bykarte=0;
         
       while(bxkarte!=feld&&bykarte!=feld&&bzkarte!=feld){
       // if(z[feld])
       bxkarte++;
       
        if(bxkarte==feld){bxkarte=0;bykarte++;}
         if(bykarte==feld){bykarte=0;bxkarte=0;bzkarte++;}
        // if(bzkarte==feld){bxkarte=feld;bykarte=feld;bzkarte=feld;}
           
         if(x[bxkarte]!=0&&y[bykarte]!=0&&z[bzkarte]!=0 ){  
       
pushMatrix();  


translate(100+karte*bxkarte, 250+karte*bykarte, karte*bzkarte );
stroke(5, 0, 255, 250);

fill(5, 0, 255, 250);
     box(karte); 
    popMatrix(); 
     
       }  
       
       
       
       }
       /*
       qxkarte=qxkarte+xkarte;
         qykarte=qykarte+ykarte;
         qzkarte=qzkarte+zkarte;
      if(qzkarte>=feld)qzkarte=feld-1;
      
     if(qxkarte>=feld)qxkarte=feld-1;
     if(qykarte>=feld)qykarte=feld-1;
     
        if(qzkarte<=0)qzkarte=0;
      
     if(qxkarte<=0)qxkarte=0;
     if(qykarte<=0)qykarte=0;
     
    
    
    
     x[qxkarte]=1;
       x[qxkarte-xkarte]=1;
        
          y[qykarte]=1;
       y[qykarte-ykarte]=1;
          z[qzkarte]=1;
        z[qzkarte-zkarte]=1;
    pushMatrix();  


translate(100+karte*qxkarte, 250+karte*qykarte, karte*qzkarte );


stroke(255, 100, 5, 250);

fill(255);
     box(karte); 
    popMatrix();    
       
       */
  
}
