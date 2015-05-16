//http://semmy.me/ide/




PFont f;
//StringList notes;
//StringList chord;
String[] notes = {"C","C#","D","D#","E","F","F#","G","G#","A","A#","B"};
String[] chord = {"maj","dom7","maj7","maj6","min","min7","m7","min6","dim","hd7","dmj7","dim7","aug","aug7","amj7"};
int b =0;
int x;
int y;
int z;
int[][] interval = { {4,7,0}, {4,7,10}, {4,7,11}, {4,7,9},{3,7,0},{3,7,10}, 
{3,7,11}, {3,7,9}, {3,6,0}, {3,6,10},{3,6,11},{3,6,9},{4,8,0},{4,8,10},{4,8,11} }; 

void setup(){
    

  background(0);
  size(400,800);
  f = createFont("Arial",24,true); // STEP 3 Create Font
  
  

  textFont(f,24);
  text("Hello Chords!",10,50); 
  
  
  for(int c = 0; c < 6; c++) {
    button(40+80*c,150,c,notes,10,10,70);
}
  
  for(int c = 0; c < 6; c++) {
    button(40+80*c,230,c+6,notes,10,10,70);
}

  for(int c = 0; c < 6; c++) {
    button(40+80*c,490,c,chord,25,10,70);
}
  
  for(int c = 0; c < 6; c++) {
    button(40+80*c,570,c+6,chord,25,10,70);
}
  for(int c = 0; c < 3; c++) {
    button(40+80*c,650,c+12,chord,25,10,70);
} 
}

void draw(){
  
  
  if(x>0){
  fill(150,20,255);
  rect(100, 320, 167,60);
  textFont(f,24); 
  fill(255);
  text(notes[b]+"  "+ notes[(b+x)%12]+"  "+ notes[(b+y)%12]+"  "+ notes[(b+z)%12] ,110,360);
  }
  
  
  
  



for (int i = 0; i < 6; i++) { 
  if ( dist(40+80*i,150,mouseX,mouseY) < 70){b=i;} 
  else if ( dist(40+80*i,230,mouseX,mouseY) < 70){b=i+6;} 
}

for (int i = 0; i < 6; i++) { 
  if ( dist(40+80*i,490,mouseX,mouseY) < 70){x=interval[i][0]; y=interval[i][1]; z=interval[i][2]; } 
else if ( dist(40+80*i,570,mouseX,mouseY) < 70){x=interval[i+6][0]; y=interval[i+6][1]; z=interval[i+6][2]; } 
else if ( dist(40+80*i,650,mouseX,mouseY) < 70){x=interval[i+12][0]; y=interval[i+12][1]; z=interval[i+12][2]; } 
}





}

void button(float x, float y, int u, String[] l, int r, int s, int d){
  fill(50,20,255);
  ellipse(x, y, d,d);
  textFont(f,24); 
  fill(255);
  text(l[u],x-r,y+s);
}
