public class Player extends URObject implements PHYSICAL, MOVABLE {
    public Player(PVector position, PVector dimension, PVector angle, PVector speed, PVector acceleration) {
        super(position, dimension, angle, speed, acceleration, new Texture(null));
    }

    public static final PVector dimension;

    public boolean CheckCollision(GameObj other) {
        return false;
    }

    public void Update() {

    }

    public void Render() {
    }

    public void Move() {
    }

}
