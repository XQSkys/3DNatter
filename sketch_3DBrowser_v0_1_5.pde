//PImage webImg;
  

Table table;
IntList tag;
IntList food;
IntList stone;
IntList speed;
void setup() {
  size(1200, 800, P3D);
  frameRate(15);
  background(0, 0, 70);
  tag = new IntList();
  food = new IntList();
  stone= new IntList();
   speed= new IntList();
  // webImg = loadImage("http://www.Rechenkraft.net/wiki/images/7/7f/RKNev.png");
    table = new Table();
  

  table.addColumn("page1", Table.INT);
  table.addColumn("page2", Table.INT);
  table.addColumn("page3", Table.INT);
   table.addRow();
  table.addRow();
   table.addRow();
     table.addRow();
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
int up=0;
int down=0;
int left=0;
float right=0;

int load=0;
int save=0;
int ini=0;

void draw() {
   
  
  directionalLight(126, 126, 126, 0, 0, -1);
ambientLight(102, 102, 102);
  
  mouseovery = mouseY;
  mouseoverx = mouseX;
  int[] x= new int[feld+1];
  int[] y= new int[feld+1];
  int[] z= new int[feld+1];
  karte=420/feld;
 
  fill(0);
  rect(0, 0, 800, 800);
   fill(200);
  rect(800, 0, 400, 800); 
  textSize(26);
  fill(0);
  text("Menue",820,40);
  
  
  fill(255);
  textSize(26);
      text("youtube",20,20);
   fill(255);
  textSize(26);
      text("Google",520,20);    
    fill(255);
  textSize(26);
      text("Lieferando",270,20); 
   
       fill(220);
    rect(810,60,120,40);
    textSize(20);
    fill(0);
    text("Load",820,90);
    if(mouseoverx>810&&mouseoverx<=930&&mouseovery>=60&&mouseovery<=100&&load==0){  
    stroke(255);
    rect(810,60,120,40);
    textSize(20);
    fill(255);
    text("Load",820,90);if (mousePressed) {load=1;}}
    
    if (load==1) { textSize(20);
      stroke(220);
      fill(220);
    rect(810,60,120,40);
    
    fill(0);text("Fertig!",820,90);}
     if (load==1) {
         ;
  table= loadTable( "data/new.csv", "header");
  }
  
      fill(220);
    rect(810,130,120,40);
    textSize(20);
    fill(0);
    text("Save",820,160);
    if(mouseoverx>810&&mouseoverx<=930&&mouseovery>=130&&mouseovery<=170){  
    stroke(255);
    rect(810,130,120,40);
    textSize(20);
    fill(255);
    text("Save",820,160);if (mousePressed) {load=0;save=1;}}
    
    if (save==1) { textSize(20);
      stroke(220);
      fill(220);
    rect(810,130,120,40);
    
    fill(0);text("Fertig!",820,160);}
    
  
  
  
  rotateX(4+mouseoverx/1200*PI);
  
  
  
  rotateY(1+mouseovery/1200*PI);
 if (mousePressed) {
  right=mouseoverx;
 
 }
  rotateZ(2+right/1200*PI);
 
 if(ini==0){
    xkarte=0;
      ykarte=0;
      zkarte=0;
  if (keyPressed) {
    if (key == 'c' ) {
      xkarte=-1;
      ykarte=0;
      zkarte=0;
    }
    if (key == 'e' ) {
      xkarte=1;
      ykarte=0;
      zkarte=0;
    }
    if (key == 's' ) {
      xkarte=0;
      ykarte=-1;
      zkarte=0;
    }
    if (key == 'w' ) {
      xkarte=0;
      ykarte=1;
      zkarte=0;
    }
    if (key == 'a' ) {
      xkarte=0;
      ykarte=0;
      zkarte=1;
    }
    if (key == 'd' ) {
      xkarte=0;
      ykarte=0;
      zkarte=-1;
   }
  
     if (key == 'r') {
     stone3++;
      
     
     
     
   }
   
      if (key == 'v' ) {
      stone3--;
   }
  
  
  }
    
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
  
  
// table= loadTable( "data/new.csv");
  // if(loadTable( "data/new.csv"!=null)){
   
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
      feld=6+stone3;
      
  
      
      
      
      
      
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
        link("https://lieferando.de");
      }
      if ( stone.hasValue(aim)==true) {
        stone.remove(0);
        stone3++;
            link("https://www.youtube.com/results?search_query="+mapaim3);
        
      }
        if ( speed.hasValue(aim)==true) {
        speed.remove(0);
        speeds3++;
        link("https://www.google.com/search?q="+mapaim3);
        
      }
      
      
      
      stroke(255, 0, 100, 255);
      fill(255, 0, 100);
      box(karte); 
      popMatrix();
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
    if (stone.size()<=0)
      stone.append((int)random(0, feld*feld*feld));
    if (stone1==stone.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
  //    println( stone.get(0));
    


      
      
   fill(170);
      stroke(170);
      box(karte);
      popMatrix();
       pushMatrix();
       stroke(170);fill(170);
     line(100+karte*axkarte, 250+karte*aykarte, karte*azkarte , 30, 30, 30);
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
    if (food.size()<=0)
      food.append((int)random(0, feld*feld*feld));
    if (food3==food.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );

          fill(255, 100, 100 ,255);
      stroke(255, 100, 100 ,255);
      box(karte); 
      popMatrix();pushMatrix();      stroke(255, 100, 100 ,255);fill(255, 100, 100 ,255);
      line(100+karte*axkarte, 250+karte*aykarte, karte*azkarte , 30, 30, 280);
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
    if (speed.size()<=0)
      speed.append((int)random(0, feld*feld*feld));
    if (speeds1==speed.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
    //  println( speed.get(0));
      

      
      
      stroke(255,0,255,255);
      fill(255,0,255,255);
      box(karte); 
      popMatrix();
      
      
         pushMatrix();
      stroke(255,0,255 ,255);fill(255,0,255,255);
      line(100+karte*axkarte, 250+karte*aykarte, karte*azkarte , 30, 30, 530);popMatrix();
    
      
      
    }
  } 
  
   }
 if(save==1){

      table.setInt(0, "page1", stone3);
 saveTable(table, "data/new.csv");
        println(table.getInt(0, "page1"));
 table.setInt(1, "page1", stone.get(0));
saveTable(table, "data/new.csv");
        println(table.getInt(1, "page1"));
 table.setInt(2, "page1", food.get(0));
saveTable(table, "data/new.csv");
       println(table.getInt(2, "page1"));
table.setInt(3, "page1", speed.get(0));
 saveTable(table, "data/new.csv");
        println(table.getInt(3, "page1"));
save=0;
   }
 
 if(load==1){
stone3=table.getInt(0, "page1");
stone.set(0,table.getInt(1, "page1"));
food.set(0,table.getInt(2, "page1"));
speed.set(0,table.getInt(3, "page1"));

 
        println(table.getInt(0, "page1"));
 
 println(table.getInt(1, "page1"));
 

       println(table.getInt(2, "page1"));


        println(table.getInt(3, "page1"));
    
  load=0;
   }
 
 }
 
 
 
 
 
 
