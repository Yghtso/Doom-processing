public class Parallelepiped extends RObject {

    public Parallelepiped(PVector position, PVector dimension, PVector angle, PVector speed, PVector acceleration,
            Texture texture) {

        super(position, dimension, angle, speed, acceleration, texture);

        float halfWidth = dimension.x / 2;
        float halfHeight = dimension.y / 2;
        float halfDepth = dimension.z / 2;

        // FRONTALE
        rectangles[0] = new Rectangle(new PVector(0, 0, halfDepth), new PVector(this.dimension.x, this.dimension.y),
                new PVector(0, 0, 0), new PVector(this.speed.x, this.speed.y, this.speed.z),
                new PVector(this.acceleration.x, this.acceleration.y, this.acceleration.z),
                this.texture);
        // LATERALE DESTRA
        rectangles[1] = new Rectangle(new PVector(halfWidth, 0, 0), new PVector(this.dimension.z, this.dimension.y),
                new PVector(0, 90, 0), new PVector(this.speed.x, this.speed.y, this.speed.z),
                new PVector(this.acceleration.x, this.acceleration.y, this.acceleration.z),
                this.texture);
        // LATERALE SINISTRA
        rectangles[2] = new Rectangle(new PVector(-halfWidth, 0, 0), new PVector(this.dimension.z, this.dimension.y),
                new PVector(0, -90, 0), new PVector(this.speed.x, this.speed.y, this.speed.z),
                new PVector(this.acceleration.x, this.acceleration.y, this.acceleration.z),
                this.texture);
        // ANTERIORE
        rectangles[3] = new Rectangle(new PVector(0, 0, -halfDepth), new PVector(this.dimension.x, this.dimension.y),
                new PVector(0, 0, 0), new PVector(this.speed.x, this.speed.y, this.speed.z),
                new PVector(this.acceleration.x, this.acceleration.y, this.acceleration.z),
                this.texture);
        // SOPRA
        rectangles[4] = new Rectangle(new PVector(0, halfHeight, 0), new PVector(this.dimension.x, this.dimension.y),
                new PVector(90, 0, 0), new PVector(this.speed.x, this.speed.y, this.speed.z),
                new PVector(this.acceleration.x, this.acceleration.y, this.acceleration.z),
                this.texture);
        // SOTTO
        rectangles[5] = new Rectangle(new PVector(0, -halfHeight, 0), new PVector(this.dimension.x, this.dimension.y),
                new PVector(90, 0, 0), new PVector(this.speed.x, this.speed.y, this.speed.z),
                new PVector(this.acceleration.x, this.acceleration.y, this.acceleration.z),
                this.texture);
    }

    public void Render() {
        pushMatrix();
        translate(position.x, position.y, position.z);
        rotateX(radians(angle.x));
        rotateY(radians(angle.y));
        rotateZ(radians(angle.z));
        for (Rectangle rect : rectangles) {
            rect.Render();
        }
        popMatrix();
    }

    public void Update() {
        angle.x += 0.3;
        angle.y += 0.3;
        angle.z += 0.3;
    }

    private final static int FACES = 6;
    private Rectangle[] rectangles = new Rectangle[6];
}
