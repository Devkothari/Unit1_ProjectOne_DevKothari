

// Project One Devansh Kothari

PImage whitecar; 
PImage greencar;
PImage bluecar;
PImage yellowcar;
PImage freeway;
PImage carcrash;
PFont title;

int gx=600;
int gy=0;
int wx=400;
int wy=400;
int bx=100;
int by=100;
int yx=1100;
int yy=100;


void setup()
{
  size(1200,800);
  whitecar = loadImage("whitecar.png");
  greencar = loadImage("greencar.png");
  bluecar = loadImage("bluecar.png");
  yellowcar = loadImage("yellowcar.png");
  carcrash = loadImage("carcrash.png");
  carcrash.resize(1200,800);
  freeway = loadImage("freeway.jpg");
  freeway.resize(1200,800);
  imageMode(CENTER);
  title = loadFont("LucidaBright-DemiItalic-48.vlw");
}

void draw()
{
background(freeway);
image(greencar,gx,gy);
gy=gy+6;
image(whitecar,wx,wy);
wx=wx+4;
if(wx>width)
{
  gx=600; gy=0;
 wx=400; wy=400; bx=100; by=100;
 yx=1100; yy=100;
}
image(bluecar,bx,by);
bx=bx+5;
by=by+4;
image(yellowcar,yx,yy);
yx=yx-5;
yy=yy+4;
if( dist(gx,gy,wx,wy)< 100)
{
  background(carcrash);
};
if( dist(bx,by,yx,yy)< 100)
{
  background(carcrash);
}
textFont(title,75);
fill(0);
textAlign(CENTER);
text("Drive safe!",600,100);



}