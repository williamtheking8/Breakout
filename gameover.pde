void gameover() {

  








  background(120, 120, 0);
  image(gif[frame], 0, 0, width, height);
  frame= frame + 1;
  if (frame == 19) frame = 0;



  textSize(200);
  fill(#DE07DB);
  if (score < n) {
    text("L", ax+27, ay+3);
    text("O", kx+27, ky+3);
    text("S", ox+27, oy+3);
    text("T", ux+27, uy+3);
    text("!", tx+27, ty+3);
  } else {
    text("W", ax+27, ay+3);
    text("O", kx+27, ky+3);
    text("N", ox+27, oy+3);
    text("!", ux+27, uy+3);
    text("!", tx+27, ty+3);
  }




  text("Y", bx-3, by+3);
  text("O", rx-3, ry+3);
  text("U", ex-3, ey+3);








  fill(#07CADE);   

  if (score < n) {
    text("L", ax+30, ay);
    text("O", kx+30, ky);
    text("S", ox+30, oy);
    text("T", ux+30, uy);
    text("!", tx+30, ty);
  } else {
    text("W", ax+30, ay);
    text("O", kx+30, ky);
    text("N", ox+30, oy);
    text("!", ux+30, uy);
    text("!", tx+30, ty);
  }


  text("Y", bx, by);
  text("O", rx, ry);
  text("U", ex, ey);




  if (bx > 79) {
    bx = bx - 5;
  } else if (bx < 71) {
    bx = bx + 5;
  } else    bx = 75;
  if (rx > 179) {
    rx = rx - 5;
  } else if (rx < 171) {
    rx = rx + 5;
  } else  rx = 175;

  if (ex > 279) {
    ex = ex- 5;
  } else if (ex < 271) {
    ex = ex+ 5;
  } else    ex = 275;

  if (ax> 479) {
    ax =  ax - 5;
  } else if ( ax< 471) {
    ax =  ax + 5;
  } else     ax= 475; 

  if (kx > 579) {
    kx = kx - 5;
  } else if (kx < 571) {
    kx = kx + 5;
  } else    kx = 575;

  if (ox > 679) {
    ox = ox - 5;
  } else if (ox < 671) {
    ox = ox + 5;
  } else    ox = 675;

  if (ux > 779) {
    ux = ux - 5;
  } else if (ux < 771) {
    ux = ux + 5;
  } else    ux = 775;

  if (tx > 854) {
    tx = tx - 5;
  } else if (tx < 846) {
    tx = tx + 5;
  } else    tx = 850;

  ////////////////////////////YYYYYYYYYYYYYYYYYYYYYYYYYYYY///////////////////////////
  if (by > height/2+4) {
    by = by - 5;
  } else if (by < height/2-4) {
    by = by + 5;
  } else    by = height/2;

  if (ry > height/2+4) {
    ry = ry - 5;
  } else if (ry < height/2-4) {
    ry = ry + 5;
  } else  ry = height/2;

  if (ey > height/2+4) {
    ey = ey- 5;
  } else if (ey < height/2-4) {
    ey = ey+ 5;
  } else    ey = height/2;

  if (ay> height/2+4) {
    ay =  ay - 5;
  } else if ( ay< height/2-4) {
    ay =  ay + 5;
  } else     ay= height/2; 

  if (ky > height/2+4) {
    ky = ky - 5;
  } else if (ky < height/2-4) {
    ky = ky + 5;
  } else    ky = height/2;

  if (oy > height/2+4) {
    oy = oy - 5;
  } else if (oy < height/2-4) {
    oy = oy + 5;
  } else    oy = height/2;

  if (uy > height/2+4) {
    uy = uy - 5;
  } else if (uy < height/2-4) {
    uy = uy + 5;
  } else    uy = height/2;

  if (ty > height/2+4) {
    ty = ty - 5;
  } else if (ty < height/2-4) {
    ty = ty + 5;
  } else    ty = height/2;
}






















void gameoverClicks() {
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

  n = 53;
  timer = 0;

  bd = 50;
  score = 0;

  tempx = 100;
  tempy = 100;

  ballx = width/2;
  bally = height-100;
  balld = 10;
  vx = 0;
  vy = 1;


  paddled = 100;
  paddlex = width/2;
  paddley = height;


  lives = 3;
  intro.rewind();
  mode = INTRO;
  
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
 }
