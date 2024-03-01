Game game;

void setup(){
    size(1920, 1080, P3D);
    frameRate(60);
    game = new Game();
}

void draw(){
    game.Update();
    game.Render();
}
