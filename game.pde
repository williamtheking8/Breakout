void game() {
  background(0, 120, 120);
  strokeWeight(2);
  timer++;
  theme.play();

  if (score == n) {
    mode = GAMEOVER;
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
    theme.rewind();
    theme.pause();
    intro.play();
  }


  //lives
  textSize(50);
  fill(0);
  text("Lives:"+lives, 748, 802);
  text("Score:"+score+"/"+n, 148, 802);

  fill(255);
  text("Lives:"+lives, 750, 800);
  text("Score:"+score+"/"+n, 150, 800);


  if (lives == 0) {
    mode = GAMEOVER;
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
    theme.rewind();
    theme.pause();
    intro.play();
    
  }
  //ball mvmnt
  if (vy == 0) {
    vy = 1;
  }
  if (timer > 100) {
    ballx = vx + ballx;
    bally = vy + bally;
  }
  //ball 
  fill(255);
  circle(ballx, bally, balld);

  //ball collision
  if (ballx > width-balld/2 || ballx < balld/2 ) {
    vx = vx*-1;
    boop.rewind();
    boop.play();
  }
  if (bally < balld/2 ) {
    vy = vy*-1;
    boop.rewind();
    boop.play();
  }
  if (bally > height-balld/2) {
    timer = 0;
    ballx = width/2;
    bally = height-100;
    vx = 0;
    vy = 1;
    lives = lives - 1;
    lost.rewind();
    lost.play();
  }

  //paddle 
  stroke(#DE07DB);
  fill(#07CADE);  
  circle(paddlex, paddley, paddled);
  paddlex = mouseX;

  stroke(0);


  //paddle collision
  if (dist(paddlex, paddley, ballx, bally) <= (balld/2+paddled/2)) {
    vx = (ballx - paddlex)/9;
    vy = (bally - paddley)/9;
    boop.rewind();
    boop.play();
  }

  // keeps ball in game
  if (ballx < balld/2) {
    ballx = balld/2;
  }
  if (ballx > width-balld/2) {
    ballx = width-balld/2;
  }
  if (bally < balld/2) {
    bally = balld/2;
  }
  if (bally > height-balld/2) {
    bally = height-balld/2;
  }







  // brick drawing, colour, and bouncing
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      brickLogic(i);
    }
    i++;
  }
}
void gameClicks() {
  mode = PAUSE;
  theme.pause();
}

void brickLogic (int i) {
  if (y[i] == 100)  fill(#EA132C);
  if (y[i] == 200)  fill(#EA13BC);
  if (y[i] == 300)  fill(#8913EA);
  if (y[i] == 400)  fill(#1318EA);
  if (y[i] == 500)  fill(#13E5EA);
  if (y[i] == 600)  fill(#13EA23);
  if (y[i] == 700)  fill(#E6EA13);
  circle(x[i], y[i], bd);
  if (dist(x[i], y[i], ballx, bally) < (balld/2+bd/2)) {
    vx = (ballx - x[i])/5;
    vy = (bally - y[i])/5;
    alive[i] = false;
    score = score + 1;
    wow.rewind();
    wow.play();
  }
}
