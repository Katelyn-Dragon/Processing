PImage farm;

PImage pumpkin;

PImage scarecrow;

int x = 4;
int y = 650;

int vx = 15;
int vy = -30;

static final int GRAVITY = -1;

static final int READY = 0;
static final int FIRE = 1;
static final int HIT = 2;
int mode = READY;

void setup() {
  size (1024, 768);
  farm = loadImage("Background.png");
  pumpkin = loadImage("Pumpkin.png");
  scarecrow = loadImage("Scarecrow.png");
}
void draw() {
  background (farm);
  if (mode == READY) {
    image (scarecrow, 800, 450);
  } else if (mode == FIRE) {
    x += vx;
    y += vy;
    vy -= GRAVITY;
    if ((x + 64 >= 800)&&
      (x < 800 + 1056)&&
      (y + 64 >= 450)&&
      (y < 782)) {
      println("hit");
      mode = HIT;
      rotate(HALF_PI);
      image (scarecrow, 800, 450);
    } else {
      rotate(0);
      image (scarecrow, 800, 450);
    }
    if (y > 650) {
      mode = READY;
      x = 4;
      y = 650;

      vx = 15;
      vy = -30;
    }
  }else if (mode == HIT){
    rotate(HALF_PI);
      image (scarecrow, 800, 450);
  }
  image (pumpkin, x, y);
}
void mousePressed() {
  mode = FIRE;
}

