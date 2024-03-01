import java.util.ArrayList;

enum GState {
    Start,
    InGame,
    Dead,
}

enum GSettings {
    ON,
    OFF,
}

public class GameState {

    public ArrayList<UObject> getUObjects() {
        return UObjects;
    }

    public ArrayList<RObject> getRObjects() {
        return RObjects;
    }

    public ArrayList<URObject> getURObjects() {
        return URObjects;
    }

    public void addUObject(UObject obj) {
        UObjects.add(obj);
    }

    public void addRObject(RObject obj) {
        RObjects.add(obj);
    }

    public void addURObject(URObject obj) {
        URObjects.add(obj);
    }

    public void setKey(int code, boolean state) {
        KeysState[code] = state;
    }

    public boolean getKey(int code) {
        return KeysState[code];
    }

    public void setgState(GState gState) {
        this.gState = gState;
    }

    public GState getgState() {
        return gState;
    }

    public GameState() {
        UObjects = new ArrayList<UObject>();
        RObjects = new ArrayList<RObject>();
        URObjects = new ArrayList<URObject>();
    }

    private ArrayList<UObject> UObjects;

    private ArrayList<URObject> URObjects;

    private ArrayList<RObject> RObjects;

    // TO DO : CREARE UNA CLASSE OGGETTI FISICI E MISTI
    // private ArrayList<RObject3D> RObjects;

    private GState gState = GState.InGame;

    private GSettings gSettings = GSettings.OFF;
    private boolean[] KeysState = new boolean[512];
}
