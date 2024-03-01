public class Texture {

    public Texture(String path_to_texture) {
        Img = loadImage(path_to_texture);
    }

    public void SetImg(String path_to_texture) {
        Img = loadImage(path_to_texture);
    }

    public PImage getImg() {
        return Img;
    }

    private PImage Img;
}
