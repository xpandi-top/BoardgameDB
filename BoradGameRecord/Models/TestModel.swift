//
//  TestModel.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/16/21.
//

import Foundation
import Combine
import RealmSwift

var data:(records:[Record], players:[Player], games:[Game]) = genTest()
var recordList:RecordsList = initRecordList()
var playerRecordList: PlayerRecordList = initPlayerRecordList(record: recordList.recordsList[0], playerNames: ["DIMO"])
var playerList: PlayerList = initPlayerList()
var gameList: GameList = initGameList()

// test for data
class TestData: ObservableObject {
    @Published var testString = "this is a string test for data transfer"
}

// test for realm
class Note: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var content: String = ""
}

func addToRealm()  {
    let realm  = try! Realm()
    let myFirstNote = Note()
    myFirstNote.content = "first content"
    myFirstNote.title = "first Note"
//    try! realm.write {
//        realm.add(myFirstNote)
//    }
    
    
    do{
        try realm.write{
            realm.add(myFirstNote)
        }
    }catch{
        print(error.localizedDescription)
    }
}


func genTest()-> ([Record],[Player],[Game]){
    var records : [Record] = []
    var games:[Game] = []
    var players:[Player] = []
    var testRecord = Record(players: [], recordIndex: 0, boardGameName: "Clue", startTime: Date(), endTime: Date(), notes: "")

    var DM = Player(games: [], name: "Dimo", records: [])
    //DM.name = "Dimo"
    //var
    var HYP = Player(games: [], name: "Hanying", records: [])
    
    let game = Game(gameName: "Clue", playTimes: 1, records: [testRecord])

    //testRecord.players.append(contentsOf: [DM, HYP])
    //DM.name = ""
    HYP.addRecord(record: testRecord)
    DM.addRecord(record: testRecord)
    
    testRecord.players.append(HYP)
    testRecord.players.append(DM)
    
    records.append(testRecord)
    players.append(contentsOf: [DM,HYP])
    games.append(game)
    return (records, players, games)
}

func initRecordList() -> RecordsList{
    var recordList:RecordsList = RecordsList()
    for _ in 0...10{
        recordList.addRecord()
    }
    return recordList
}

func initPlayerRecordList(record:Record, playerNames:[String]) -> PlayerRecordList{
    var playerRecordList: PlayerRecordList = PlayerRecordList()
    for name in playerNames {
        playerRecordList.addPlayerRecord(recordIndex: record.recordIndex, naem: name)
    }
    return playerRecordList
}

func initPlayerList() -> PlayerList{
    let playerName = ["player1","player2","player3"]
    var playerList: PlayerList = PlayerList()
    for name in playerName {
        playerList.playerList.append(Player(name:name))
    }
    return playerList
}

func initGameList() -> GameList {
    let boardGameName = ["Clue", "Tapestry", "Unlock", "Scythe"]
    var gameList: GameList = GameList()
    
    for name in boardGameName {
        gameList.GameList.append(Game(gameName:name))
    }
    return gameList
}
//extension Player:PlayerFunctionProtocol{
//    func addPlayer() {
//        <#code#>
//    }
//
//    func deletPlayer() {
//        <#code#>
//    }
//
//
//}
//====refernces
//final class ModelData: ObservableObject {
//    @Published var landmarks: [Landmark] = load("landmarkData.json")
//}
//struct LandmarkList: View {
//    @EnvironmentObject var modelData: ModelData
//}
