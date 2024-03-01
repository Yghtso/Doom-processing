interface UPDATABLE {
    void Update();
}

interface RENDERABLE {
    void Render();
}

interface PHYSICAL {
    boolean CheckCollision(GameObj other);
}

interface MOVABLE {
    void Move();
}

public abstract class GameObj {
    public GameObj(PVector position, PVector dimension, PVector angle, PVector speed, PVector acceleration) {
        this.position = position;
        this.dimension = dimension;
        this.angle = angle;
        this.speed = speed;
        this.acceleration = acceleration;
    }

    protected PVector position;
    protected PVector dimension;
    protected PVector angle;
    protected PVector speed;
    protected PVector acceleration;
}
