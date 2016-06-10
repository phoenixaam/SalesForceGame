public class GameMain {

    public static void main() {
        Unit drogo = new Unit('Drogo', 100, 20, 30);
        Unit snow = new Unit('Snow', 100, 20, 30);

        Game game = new Game();
        Unit winner = game.fight(drogo, snow);
        system.debug('Winner: ' + winner.getName() + '!');
    }
}