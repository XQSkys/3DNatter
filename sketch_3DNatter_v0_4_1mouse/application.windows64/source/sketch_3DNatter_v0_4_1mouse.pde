IntList tag;
IntList food;
IntList stone;
IntList speed;
IntList tagc;



void setup() {
  size(800, 800, P3D);
  //frameRate(5);
  background(0, 0, 70);
  tag = new IntList();
  food = new IntList();
  stone= new IntList();
   speed= new IntList();
   tagc= new IntList();
}
int karte=1;
int feld=12;  //3,4,5,6       
int xkarte=0;
int ykarte=0;
int zkarte=0;
int mapfeld=1;
float  mouseovery;
float  mouseoverx;
int mapaim4=0;
int stone1=0;
int stone2=0;
int food3=0;
int food4=0;
int speeds1=0;
int speeds2=0;
int speeds3=1;
int stone3=0;
int maphead=0;
int beta=0;
int qxkarte=5;
int qykarte=5;
int qzkarte=5;
int axkarte=2;
int aykarte=2;
int azkarte=2;
int bxkarte=2;
int bykarte=2;
int bzkarte=2;
int mapaim3=0;
int look=0;
int here=0;
int once=0;
int aim=-3;
int aim1=0;
int aim2=0;
int aim3=-3;
int aim4=0;
float rotate1=0;
float rotate2=0;
float rotate3=0;
float sense=800;
void draw() {
  
  directionalLight(126, 126, 126, 0, 0, -1);
ambientLight(102, 102, 102);
  
  mouseovery = mouseY;
  mouseoverx = mouseX;
  int[] x= new int[feld+1];
  int[] y= new int[feld+1];
  int[] z= new int[feld+1];
  karte=420/feld;
  pushMatrix();
  fill(0);
  rect(0, 0, 800, 800);
  popMatrix();
   if((mouseoverx>100&&mouseoverx<700)&&(mouseovery>0&&mouseovery<100)){sense=mouseovery*1.2;};
 if((mouseoverx>0&&mouseoverx<100)&&(mouseovery>100&&mouseovery<700)){rotate1=mouseovery/sense;};
 if((mouseoverx>100&&mouseoverx<700)&&(mouseovery>700&&mouseovery<800)){rotate2=mouseoverx/sense;}
  if((mouseoverx>700&&mouseoverx<800)&&(mouseovery>100&&mouseovery<700)){rotate3=mouseovery/sense;};

rotateX( rotate1);
rotateZ( rotate2);
rotateY( rotate3);




     if((mouseoverx>100&&mouseoverx<300)&&(mouseovery>300&&mouseovery<500)) {
      xkarte=1;
      ykarte=0;
      zkarte=0;
    }
     if((mouseovery<500&&mouseovery>300)&&(mouseoverx>500&&mouseoverx<700)) {
      xkarte=-1;
      ykarte=0;
      zkarte=0;
    }
    if((mouseoverx>300&&mouseoverx<500)&&(mouseovery>100&&mouseovery<300)){
      xkarte=0;
      ykarte=1;
      zkarte=0;
    }
    if((mouseovery>500&&mouseovery<700)&&(mouseoverx>300&&mouseoverx <500)) {
      xkarte=0;
      ykarte=-1;
      zkarte=0;
    }
    if((mouseoverx>500&&mouseoverx<700)&&(mouseovery>100&&mouseovery<300)) {
      xkarte=0;
      ykarte=0;
      zkarte=1;
    }
    if((mouseoverx>100&&mouseoverx<300)&&(mouseovery>500&&mouseovery<700)) {
      xkarte=0;
      ykarte=0;
      zkarte=-1;
    }
  
  delay(480/speeds3);   
  qxkarte=qxkarte+xkarte;  
  qykarte=qykarte+ykarte;  
  qzkarte=qzkarte+zkarte;
  if (qxkarte<=-1)qxkarte=feld; 
  if
    (qxkarte>=feld+1)qxkarte=0;
  if (qykarte<=-1)qykarte=feld;
 if 
    (qykarte>=feld+1)qykarte=0;
  if (qzkarte<=-1)qzkarte=feld;
  if (qzkarte>=feld+1)qzkarte=0;
    
  x[qxkarte]=1;
  y[qykarte]=1;
  z[qzkarte]=1;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (axkarte!=feld&&aykarte!=feld&&azkarte!=feld) {
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
    pushMatrix();  
    translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
    stroke(255, 100, 255, 30);
    noFill();
    box(karte); 
    popMatrix();
  }
  bzkarte=0;
  bxkarte=-1;
  bykarte=0;
  while (bxkarte!=feld&&bykarte!=feld&&bzkarte!=feld) {
    bxkarte++;
    mapaim3++;
    if (bxkarte==feld) {
      bxkarte=0;
      bykarte++;
    }
    if (bykarte==feld) {
      bykarte=0;
      bxkarte=0;
      bzkarte++;
    }
    if (x[bxkarte]!=0&&y[bykarte]!=0&&z[bzkarte]!=0 ) {  
      tag.append(mapaim3);
      if (tag.size()==5+food4)
        tag.remove(0);
    
       
      feld=7+stone3;
    }
  }
  mapaim3=feld*feld*feld;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (mapaim3!=0) {
    mapaim3--;
    if ( tag.hasValue(mapaim3)==false) {
      axkarte++;
      if (axkarte==feld) {
        axkarte=0;
        aykarte++;
      }
      if (aykarte==feld) {
        aykarte=0;
        axkarte=0;
        azkarte++;
      }
    } else {
      aim  = mapaim3;
      pushMatrix();  
      axkarte++;
      if (axkarte==feld) {
        axkarte=0;
        aykarte++;
      }
      if (aykarte==feld) {
        aykarte=0;
        axkarte=0;
        azkarte++;
      }
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
      if ( food.hasValue(aim)==true) {
        food.remove(0);
        food4++;
      }
      if ( stone.hasValue(aim)==true) {
        stone.remove(0);
        stone3++;
      }
        if ( speed.hasValue(aim)==true) {
        speed.remove(0);
        speeds3++;
      }
    aim4=aim;
    
    if(aim3>=-2)tagc.append(aim3);
         if (tagc.size()==4+food4)
        tagc.remove(0); 
        
      stroke(255, 0, 100, 255);
      fill(255, 0, 100, 255);
      box(karte); 
      popMatrix();
    }
  }
  

    if ( tagc.hasValue(aim )==true && tag.size()>=4 && tagc.size()>=3){
    
           float winkel;
      float laenge; 
      float dx;  
      float dy;     
      stroke(255, 200);  
      strokeWeight(2);  
      smooth();         
int i = 0;   
      while ( i < 200 ) { 
        
        
        
        i++;  
        winkel = random(2*PI);    
        laenge = random(min(width/2, height/2));    
        dx = cos(winkel)*laenge;    
        dy = sin(winkel)* laenge; 
              stroke(200, 0, 0, 150);
        line (width/2, height/2, width/2+dx, height/2-dy);  
      noStroke();
    
  
      }
    }
  

  
  stone1=feld*feld*feld;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (stone1!=0) {
    stone1--;
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
    if (stone.size()<=1)
      stone.append((int)random(0, feld*feld*feld));
    if (stone1==stone.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
      println( stone.get(0));
      stroke(170);
      fill(170);
      box(karte); 
      popMatrix();
    }
  }
  food3=feld*feld*feld;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (food3!=0) {
    food3--;
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
    if (food.size()<=1)
      food.append((int)random(0, feld*feld*feld));
    if (food3==food.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
      stroke(0, 0, 255);
      fill(255, 100, 100);
      box(karte); 
      popMatrix();
    }
  }
  
  
 speeds1=feld*feld*feld;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (speeds1!=0) {
    speeds1--;
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
    if (speed.size()<=1)
      speed.append((int)random(0, feld*feld*feld));
    if (speeds1==speed.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
      println( speed.get(0));
      stroke(255,0,255);
      fill(255,0,255);
      box(karte); 
      popMatrix();
    }
  } 
  
  
  
  aim3=aim4;
  
  
}
