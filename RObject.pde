public abstract class RObject extends GameObj implements RENDERABLE {

    public RObject(PVector position, PVector dimension, PVector angle, PVector speed, PVector acceleration,
            Texture texture) {
        super(position, dimension, angle, speed, acceleration);
        this.texture = texture;
    }

    protected Texture texture;

    public abstract void Render();

}
