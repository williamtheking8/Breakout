void intro() {
  background(120, 120, 0);
  image(gif[frame], 0, 0, width, height);
  frame= frame + 1;
  if (frame == 19) frame = 0;
  
    intro.play();


  textSize(200);
   
fill(#DE07DB);
  text("B", bx-3, by+3);
  text("R", rx-3, ry+3);
  text("E", ex-3, ey+3);
  text("A", ax-3, ay+3);
  text("K", kx-3, ky+3);
  text("O", ox-3, oy+3);
  text("U", ux-3, uy+3);
  text("T", tx-3, ty+3);
  
  
  
  
  
  
  
   fill(#07CADE);   
  text("B", bx, by);
  text("R", rx, ry);
  text("E", ex, ey);
  text("A", ax, ay);
  text("K", kx, ky);
  text("O", ox, oy);
  text("U", ux, uy);
  text("T", tx, ty);
  
 
  
  
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

  if (ax> 379) {
    ax =  ax - 5;
  } else if ( ax< 371) {
    ax =  ax + 5;
  } else     ax= 375; 

  if (kx > 479) {
    kx = kx - 5;
  } else if (kx < 471) {
    kx = kx + 5;
  } else    kx = 475;

  if (ox > 629) {
    ox = ox - 5;
  } else if (ox < 621) {
    ox = ox + 5;
  } else    ox = 625;

  if (ux > 729) {
    ux = ux - 5;
  } else if (ux < 721) {
    ux = ux + 5;
  } else    ux = 725;

  if (tx > 829) {
    tx = tx - 5;
  } else if (tx < 821) {
    tx = tx + 5;
  } else    tx = 825;

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


  //ry 
  //ey 
  //ax 
  //kx 
  //ox 
  //ux 
  //tx 
  //by 
  //ry 
  //ey
  //ay 
  //ky 
  //oy
  //uy 
  //ty
}
void introClicks() {
  mode = GAME;
   intro.pause();
  intro.rewind();
 
}
