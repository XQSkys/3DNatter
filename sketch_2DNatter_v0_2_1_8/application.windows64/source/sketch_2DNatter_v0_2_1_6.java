import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_2DNatter_v0_2_1_6 extends PApplet {

PImage webImg;

IntList tag;
IntList food;
IntList stone;
IntList speed;
public void setup() {
  
  //frameRate(5);
  background(0, 0, 70);
  tag = new IntList();
  food = new IntList();
  stone= new IntList();
   speed= new IntList();
   webImg = loadImage("http://www.Rechenkraft.net/wiki/images/8/87/Banner_apfelring.gif");

   
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
int aim=0;
int qz1karte=0;
int az1karte=0;
int vierd=0;
int z1karte=0;
int bz1karte=0;


public void draw() {
  
  directionalLight(126, 126, 126, 0, 0, -1);
ambientLight(102, 102, 102);
  
  mouseovery = mouseY;
  mouseoverx = mouseX;
  int[] x= new int[feld+1];
  int[] y= new int[feld+1];
 // int[] z= new int[feld+1];
//  int[] z1= new int[feld+1];
  
  karte=420/feld;

  
  pushMatrix();
  fill(0);
  rect(0, 0, 800, 800);
  
  
   if (webImg != null){                           //wenn ein bild vorhanden ist das bild.png heißt tue:
        
     
    
  image(webImg, 10, 10);
  
  
    image(webImg, 10, 10);
 if ((mouseoverx >= 10 && mouseoverx <= 478) && (mouseovery  >= 10 && mouseovery  <=70)) {//??
    if (mousePressed) {
  link("http://www.Rechenkraft.net");
   delay(200);
  }}}
  
  popMatrix();
  rotateX(0.1f+mouseoverx/1200*PI);
  rotateY(1.9f+mouseovery/1200*PI);
  rotateZ(0.5f+(mouseoverx/1200*PI+mouseovery/1200*PI)/2);
  if (keyPressed) {
    if (key == 'a' ) {
      xkarte=0;
      ykarte=1;
   //   zkarte=0;
     //  z1karte=0;
    }
    if (key == 'd' ) {
      xkarte=0;
      ykarte=-1;
   //   zkarte=0;
    // z1karte=0;
    }
    if (key == 's' ) {
      xkarte=-1;
      ykarte=0;
   //   zkarte=0;
   //  z1karte=0;
    }
    if (key == 'w' ) {
      xkarte=1;
      ykarte=0;
    //  zkarte=0;
    //  z1karte=0;
      
    }
   /* if (key == 'a' ) {
      xkarte=0;
      ykarte=0;
      zkarte=1;
      z1karte=0;
      
    }
    if (key == 'd' ) {
      xkarte=0;
      ykarte=0;
      zkarte=-1;
      z1karte=0;
      
    }
    
     if (key == 'r' ) {
      xkarte=0;
      ykarte=0;
      zkarte=0;
      z1karte=-1;
      
    }
    
     if (key == 'v' ) {
      xkarte=0;
      ykarte=0;
      zkarte=0;
      z1karte=1;
      
    }
    
    */
    
  }
  delay(480/speeds3);   
  qxkarte=qxkarte+xkarte;  
  qykarte=qykarte+ykarte;  
 // qzkarte=qzkarte+zkarte;
//   qz1karte=qz1karte+z1karte;
  
  if (qxkarte<=-1)qxkarte=feld; 
  if
    (qxkarte>=feld+1)qxkarte=0;
  if (qykarte<=-1)qykarte=feld;
 if 
    (qykarte>=feld+1)qykarte=0;
 /* if (qzkarte<=-1)qzkarte=feld;
  if (qzkarte>=feld+1)qzkarte=0;
    if (qz1karte<=-1)qz1karte=feld;
  if (qz1karte>=feld+1)qz1karte=0; 
    
  */  
  x[qxkarte]=1;
  y[qykarte]=1;
//  z[qzkarte]=1;
 // z1[qzkarte]=1;
  
  //azkarte=0;
  axkarte=-1;
  aykarte=0;
 // az1karte=0;
  while (axkarte!=feld&&aykarte!=feld/*&&azkarte!=feld&&az1karte!=feld*/) {
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
  /*  if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
      if (azkarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte=0;
       az1karte++;
      
    }
    
    */
    
    
    pushMatrix();  
    translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
    stroke(255, 100, 255, 30);
    noFill();
    box(karte); 
    popMatrix();
  }
 // bzkarte=0;
  bxkarte=-1;
  bykarte=0;
  // bz1karte=0;
  while (bxkarte!=feld&&bykarte!=feld/*&&bzkarte!=feld&&bz1karte!=feld*/) {
    bxkarte++;
    mapaim3++;
    if (bxkarte==feld) {
      bxkarte=0;
      bykarte++;
    }
   /* if (bykarte==feld) {
      bykarte=0;
      bxkarte=0;
      bzkarte++;
    }
     if (bzkarte==feld) {
      bykarte=0;
      bxkarte=0;
      bzkarte=0;
      bz1karte++;
    }
    */
    
    
    if (x[bxkarte]!=0&&y[bykarte]!=0/*&&z[bzkarte]!=0&&z1[bz1karte]!=0 */) {  
      tag.append(mapaim3);
      if (tag.size()==5+food4)
        tag.remove(0);
      feld=6+stone3;
    }
  }
  mapaim3=feld*feld/**feld*feld*/;
 // azkarte=0;
  axkarte=-1;
  aykarte=0;
 // az1karte=0;
  while (mapaim3!=0) {
    mapaim3--;
    if ( tag.hasValue(mapaim3)==false) {
      axkarte++;
      if (axkarte==feld) {
        axkarte=0;
        aykarte++;
      }
    /*  if (aykarte==feld) {
        aykarte=0;
        axkarte=0;
        azkarte++;
      
    }
        if (azkarte==feld) {
        aykarte=0;
        axkarte=0;
        azkarte=0;
      az1karte++;
    } 
      */
      
    } else {
      aim  = mapaim3;
      pushMatrix();  
      axkarte++;
      if (axkarte==feld) {
        axkarte=0;
        aykarte++;
      }
    /*  if (aykarte==feld) {
        aykarte=0;
        axkarte=0;
        azkarte++;
      }
         if (azkarte==feld) {
        aykarte=0;
        axkarte=0;
        azkarte=0;
      
        az1karte++;
      
        
      }*/
      
      
      
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
      
      
      
      stroke(255, 0, 100, 255);
      fill(255, 0, 100, 255);
      box(karte); 
      popMatrix();
    }
  }
  stone1=feld*feld/**feld*feld*/;
 // azkarte=0;
  axkarte=-1;
  aykarte=0;
 // az1karte=0;
  while (stone1!=0) {
    stone1--;
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
  /*  if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
      if (azkarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte=0;
      az1karte++;
      
      
    }*/
    
    
    if (stone.size()<=1)
      stone.append((int)random(0, feld*feld/**feld*feld*/));
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
  food3=feld*feld/**feld*feld*/;
  //azkarte=0;
  axkarte=-1;
  aykarte=0;
 // az1karte=0;
  
  while (food3!=0) {
    food3--;
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
   /* if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
     if (azkarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte=0;
      az1karte++;
      
    }*/
    
    
    
    
    if (food.size()<=1)
      food.append((int)random(0, feld*feld/**feld*feld*/));
    if (food3==food.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
      stroke(0, 0, 255);
      fill(255, 100, 100);
      box(karte); 
      popMatrix();
    }
  }
  
  
 speeds1=feld*feld/**feld*feld*/;
 // azkarte=0;
  axkarte=-1;
  aykarte=0;
 // azkarte=0;
  
  while (speeds1!=0) {
    speeds1--;
    axkarte++;
    if (axkarte==feld) {
      axkarte=0;
      aykarte++;
    }
   /* if (aykarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
    
     if (azkarte==feld) {
      aykarte=0;
      axkarte=0;
      azkarte=0;
       az1karte++;
      
    }*/
    
    
    
    
    
    if (speed.size()<=1)
      speed.append((int)random(0, feld*feld/**feld*feld*/));
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
  
  
  
  
  
  
}
  public void settings() {  size(800, 800, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_2DNatter_v0_2_1_6" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
