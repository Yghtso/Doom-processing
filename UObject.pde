public abstract class UObject extends GameObj implements UPDATABLE {

    public UObject(PVector position, PVector dimension, PVector angle, PVector speed, PVector acceleration) {
        super(position, dimension, angle, speed, acceleration);
    }

    public abstract void Update();

}
