public class Game {

    public Game() {
    }

    public void Update() {

        gameManager.Process();
        for (UObject iterable_element : gameState.getUObjects()) {
            iterable_element.Update();
        }

    }

    public void Render() {

        background(0);
        for (RObject iterable_element : gameState.getRObjects()) {
            iterable_element.Render();
        }

    }

    private final GameState gameState = new GameState();
    private final GameManager gameManager = new GameManager(gameState);
}
