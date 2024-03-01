public class Rectangle extends RObject {
    public Rectangle(PVector position, PVector dimension, PVector angle, PVector speed, PVector acceleration,
            Texture texture) {
        super(position, dimension, angle, speed, acceleration, texture);
    }

    public void Render() {

        float halfWidth = dimension.x / 2;
        float halfHeight = dimension.y / 2;

        pushMatrix();
        translate(position.x, position.y, position.z);
        rotateX(radians(angle.x));
        rotateY(radians(angle.y));
        rotateZ(radians(angle.z));

        beginShape();

        textureMode(NORMAL);
        texture(texture.getImg());

        vertex(-halfWidth, +halfHeight, 0,
                0, 0);
        vertex(-halfWidth, -halfHeight, 0,
                0, 1);
        vertex(+halfWidth, -halfHeight, 0,
                1, 1);
        vertex(+halfWidth, +halfHeight, 0,
                1, 0);

        endShape(CLOSE);
        popMatrix();
    }
}
