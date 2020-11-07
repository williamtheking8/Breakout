import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// GIF
PImage[] gif;
int frame;

//Overall
int mode;
int INTRO = 1;
int GAME = 2;
int GAMEOVER = 3;
int OPTIONS = 4;
int PAUSE = 5;
int clr;
int score;

float bx,rx,ex,ax,kx,ox,ux,tx,by,ry,ey,ay,ky,oy,uy,ty;

//timers
int timer;




//arrays
boolean[] alive;
int[] x;
int[] y;


//temp
int tempx;
int tempy;
int tempclr;

//ball
int ballx,bally,balld,vx,vy;

//brick
int bd;
int n;

int paddlex,paddley,paddled;

int lives;

//Sound
Minim minim; 
AudioPlayer boop,theme,wow,lost,intro;


void setup() {
  
  
  minim = new Minim(this);
  boop = minim.loadFile("Boop.wav");
  intro = minim.loadFile("Japan.wav");
  theme = minim.loadFile("Theme.mp3");
  wow = minim.loadFile("Wow.mp3");
  lost = minim.loadFile("Record Scratch.wav");
 
  
  
  
   textAlign(CENTER,CENTER);
  bx = random(0, 900);
  rx = random(0, 900);
  ex = random(0, 900);
  ax = random(0, 900);
  kx = random(0, 900);
  ox = random(0, 900);
  ux = random(0, 900);
  tx = random(0, 900);
  by = random(0, 900);
  ry = random(0, 900);
  ey = random(0, 900);
  ay = random(0, 900);
  ky = random(0, 900);
  oy = random(0, 900);
  uy = random(0, 900);
  ty = random(0, 900);
  
  
  size(900,900);
  mode = INTRO;
  n = 53;
  timer = 0;
  
  x = new int [n];
  y = new int [n];
  alive = new boolean[n];
  gif = new PImage[19];
  
  int g = 0;
  while( g < 19 ) {
  gif[g] = loadImage("frame_"+g+"_delay-0.03s.gif");
  g++;
  }
  
  
  bd = 50;
  score = 0;
  
  tempx = 100;
  tempy = 100;
  
  
  int i = 0;
  while ( i < n){ 
    
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
   
    if (tempx > 800) {
      tempy = tempy + 100;
      tempx = tempx - 750;
      
    }
    i++;
  }
  
  //ball setup
  ballx = width/2;
  bally = height-100;
  balld = 10;
  vx = 0;
  vy = 1;
  
  //paddle diameter
  paddled = 100;
  paddlex = width/2;
  paddley = height;
  
  //other setups
  lives = 3;
}
void  draw() {
  if(mode == INTRO) {
    intro();
  } else  if(mode == GAME) {
    game();
  } else  if(mode == GAMEOVER) {
    gameover();
  } else  if(mode == OPTIONS) {
    options();
  } else if(mode == PAUSE) {
    pause();
  }
  
  
  
  
  
  
  
}
