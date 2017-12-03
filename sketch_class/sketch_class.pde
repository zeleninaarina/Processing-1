class Kvadrat {
  float x, y, s;
  float a, b, c;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
     fill( a,  b, c);
   this.a = random(0,255);
    this.b = random(0,255);
    this.c = random(0,255);
    
  }
  
  void draw() {
    rect(this.x,this.y,this.s,this.s);
   fill(this.a, this.b, this.c);
  }
  
  void right(float _s) {
    this.x+=_s;
  }
}

Kvadrat[] k_array;

void setup()
{
  size(600,600);
  k_array = new Kvadrat[10];
  for(int i=0; i<10; i++){
    k_array[i] = new Kvadrat(random(width), random(height), 100.0);
  }
}

void draw()
{
  background(0);
  for(int i=0; i<10; i++){
     k_array[i].draw();
     k_array[i].right(random(5));
  }
}