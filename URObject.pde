public abstract class URObject extends GameObj implements UPDATABLE, RENDERABLE {
    public URObject(PVector position, PVector dimension, PVector angle, PVector speed, PVector acceleration,
            Texture texture) {
        super(position, dimension, angle, speed, acceleration);
        this.texture = texture;
    }

    public abstract void Update();

    protected Texture texture;

    public abstract void Render();
}
