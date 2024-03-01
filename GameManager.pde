public class GameManager {

    public GameManager(GameState gameState) {
        gS = gameState;
        prevS = null;

    }

    public void Process() {

        if (gS.getgState() == GState.Start && gS.getgState() != prevS) {
            InitGameStart();
            prevS = GState.Start;
        }

        if (gS.getgState() == GState.InGame && gS.getgState() != prevS) {
            InitGamePlaying();
            prevS = GState.InGame;
        }

        if (gS.getgState() == GState.Dead && gS.getgState() != prevS) {
            InitGameEnd();
            prevS = GState.Dead;
        }

        if (gS.getgState() == GState.Start) {
            handleGameStart();
        }

        if (gS.getgState() == GState.InGame) {
            handleGamePlaying();
        }

        if (gS.getgState() == GState.Dead) {
            handleGameEnd();
        }
    }

    public void InitGameStart() {
    }

    public void InitGamePlaying() {
        Parallelepiped w = new Parallelepiped(new PVector(0, 0, 0), new PVector(1000, 20, 300), new PVector(0, 35, 0),
                new PVector(0, 0, 0), new PVector(0, 0, 0), new Texture("Imgs/wall.png"));
        Player player = new Player(new PVector(0, 0, -50),
                new PVector(Player.dimension.x, Player.dimension.y, Player.dimension.z), new PVector(0, 0, 0),
                new PVector(0, 0, 0), new PVector(0, 0, 0));

        gS.addRObject(w);
        gS.addURObject(player);
    }

    public void InitGameEnd() {
    }

    private void handleGameStart() {
    }

    private void handleGamePlaying() {
    }

    private void handleGameEnd() {
    }

    private GState prevS;

    private GameState gS;
}
