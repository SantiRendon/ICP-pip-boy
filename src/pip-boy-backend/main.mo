import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
actor {
  type IDGame = Text; // BLES00246

  type PS3Game = {
    id : IDGame;
    region : Text; // PAL
    consoleType : Text; // PS3
    languages : [Text]; // [EN, DE]
    title : Text; // Metal Gear Solid 4: Guns of the Patriots
    developer : Text; // Kojima Productions
    publisher : Text; // Konami
    releaseDate : Text; // 2008-6-12
    genre : [Text]; // [action, adventure]
    rating : Nat; // 18
    content : [Text]; // [violence]
    players : Nat; // 1
    reqAccessories : ?Text; //pad
    accessories : ?Text; //
    onlinePlayers : ?Nat; // 16
    onlineFeatures : ?Text; // online
  };

  let gamesList = HashMap.HashMap<IDGame, PS3Game>(0, Text.equal, Text.hash);

  // ====-====-====-====-==== CRUD ps3 games ====-====-====-====-==== \\

  // Create
  public shared func addGame(idGame : IDGame, ps3Game : PS3Game) : async () {
    let game = ps3Game;

    gamesList.put(idGame, game);
    Debug.print("Created game with id:" # idGame);
    return ();
  };

  // Read
  public query func showGames() : async [(IDGame, PS3Game)] {
    let gamesIter : Iter.Iter<(IDGame, PS3Game)> = gamesList.entries();
    let gamesArray : [(IDGame, PS3Game)] = Iter.toArray(gamesIter);

    return gamesArray;
  };

  public query func showGameById(idGame : IDGame) : async ?PS3Game {
    let game : ?PS3Game = gamesList.get(idGame);

    return game;
  };

  // Update

  // Delete
  public query func removeGameById(idGame : IDGame) : async ?PS3Game {
    let game : ?PS3Game = gamesList.remove(idGame);

    return game;
  };

  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
};
