public class VertexTexture {

    public VertexTexture(PVector position, float u, float v) {
        this.position = position;
        this.u = u;
        this.v = v;
    }

    public PVector getPosition() {
        return position;
    }

    public float getV() {
        return v;
    }

    public float getU() {
        return u;
    }

    public void setPosition(PVector position) {
        this.position = position;
    }

    public void setU(float u) {
        this.u = u;
    }

    public void setV(float v) {
        this.v = v;
    }

    private PVector position;
    private float u;
    private float v;
}
