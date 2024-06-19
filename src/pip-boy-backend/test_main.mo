import Debug "mo:base/Debug";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import PipBoyBackend "path/to/pip-boy-backend/main";

actor {
    public shared func runTests() : async () {
        // Create an instance of the PipBoyBackend actor
        let backend = PipBoyBackend;

        // Add a game
        await backend.addGame("BLES00246", {
            id = "BLES00246";
            region = "PAL";
            consoleType = "PS3";
            languages = ["EN", "DE"];
            title = "Metal Gear Solid 4: Guns of the Patriots";
            developer = "Kojima Productions";
            publisher = "Konami";
            releaseDate = "2008-6-12";
            genre = ["action", "adventure"];
            rating = 18;
            content = ["violence"];
            players = 1;
            reqAccessories = ?"pad";
            accessories = ?null;
            onlinePlayers = ?16;
            onlineFeatures = ?"online";
        });

        // Show all games
        let games = await backend.showGames();
        Debug.print("All games:");
        Iter.forEach(games, func((id, game) {
            Debug.print("ID: " # id);
            Debug.print("Title: " # game.title);
        }));

        // Show a specific game by ID
        let gameById = await backend.showGameById("BLES00246");
        Debug.print("Game by ID:");
        Debug.print("Title: " # gameById.title);

        // Update a game
        let updatedGame = {
            id = "BLES00246";
            region = "NTSC";
            consoleType = "PS3";
            languages = ["EN", "DE", "FR"];
            title = "Metal Gear Solid 4: Guns of the Patriots";
            developer = "Kojima Productions";
            publisher = "Konami";
            releaseDate = "2008-6-12";
            genre = ["action", "adventure"];
            rating = 18;
            content = ["violence"];
            players = 1;
            reqAccessories = ?"pad";
            accessories = ?null;
            onlinePlayers = ?16;
            onlineFeatures = ?"online";
        };
        let updatedGameResult = await backend.updateGameById("BLES00246", updatedGame);
        Debug.print("Updated game:");
        Debug.print("Title: " # updatedGameResult.title);

        // Remove a game
        let removedGame = await backend.removeGameById("BLES00246");
        Debug.print("Removed game:");
        Debug.print("Title: " # removedGame.title);

        // Greet
        let greeting = await backend.greet("John");
        Debug.print("Greeting:");
        Debug.print(greeting);
    };
};