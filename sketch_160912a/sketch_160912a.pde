
// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
  
void setup() {
  PImage waldo = loadImage("Waldo.jpg"); // 2. Change this to match your file name.
  size(waldo.width, waldo.height);
  image(waldo, 0, 0);
}

void draw() {
  // 3. Use this print statement to find out the coordinates of Waldo
   println("X:172 " + mouseX + " Y:187 " + mouseY); 

  // 4. If the mouse is on Waldo, print “Waldo found!”
if(mousePressed){
  if(mouseX > 170 && mouseX < 172 && mouseY > 187 && mouseY < 190){
 println("Waldo was found!...against his will.");
 playWoohoo();
 woohoo.stop();
 woohoo.trigger();
 playDoh();

}
}
  
}

void playWoohoo() {
  woohoo.stop();
  woohoo.trigger();
}

void playDoh() {
  doh.stop();
  doh.trigger();
}


import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
AudioSample woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");


