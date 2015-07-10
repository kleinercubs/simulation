int a=0;
int n=0;

Ball[] myball = new Ball[10000];

void setup()
{
  size(500,500);
  n++;
    int R=int(random(255)),G=int(random(255)),B=int(random(255));
    color k=color(R,G,B);
    float newx=random(width),newy=random(height);
    myball[n] = new Ball(k,newx,newy,newy,1,20,0,-1);
}


void draw()
{
  background(0);
  for (int i=1;i<=n;i++)
    myball[i].playit();
  mouse();
}

class Ball
{
  color c;
  float v,xpos,ypos,a;
  int d,m,p;
  Ball (color tempC,float tempxpos,float tempypos,float tempv,int tempd,float tempa,int tempm,int tempp)
  {
    c=tempC;xpos=tempxpos;ypos=tempypos;v=tempv;d=tempd;a=tempa;m=tempm;p=tempp;
  }
  void playit()
  {
    if (xpos>500 || xpos<0) d=-d;
    if (key == 'w') {m=500;p=1;}
    if (key == 's') {m=0;p=-1;}
    fill(c);
    ellipse(xpos,m-p*ypos,20,20);
    ypos=ypos+a;
    a=a+1;
    xpos=xpos+d;
    if (ypos>500) a=-v / 8;
  }
}  


void mouse() 
{
  if (mouseButton==LEFT)
  if (n<9900)
  {
    n++;
    int R=int(random(255)),G=int(random(255)),B=int(random(255));
    color k=color(R,G,B);
    float newx=random(width),newy=random(height);
    myball[n] = new Ball(k,newx,newy,newy,1,20,0,-1);
}
}
