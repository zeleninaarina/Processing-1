class Kvadrat {
    float x, y, s;


    Kvadrat(float _x, float _y, float _s) {
        this.x = _x;
        this.y = _y;
        this.s = _s;


    }

    void draw() {
        rect(this.x, this.y, this.s, this.s);

    }

    void right(float _s) {
        this.x += _s;
    }
}


class Cvet extends Kvadrat {

    float a, b, c;
    Cvet(float a, float b, float c) {
        super(a, b, c);
        fill(a, b, c);
        this.a = a;
        this.b = b;
        this.c = c;
    }
    void draw() {
        rect(this.x, this.y, this.s, this.s);

        fill(this.a, this.b, this.c);

    }

}


Cvet[] k_array;

void setup() {
    size(600, 650);

    k_array = new Cvet[10];

    for (int i = 0; i < 10; i++) {

        k_array[i] = new Cvet(random(0, 255), random(0, 255), random(0, 255));

    }

}

void draw()

{

    background(0);



    for (int i = 0; i < 10; i++) {

        k_array[i].draw();

        k_array[i].right(random(5));

    }


}