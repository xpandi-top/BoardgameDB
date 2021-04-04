//
//  RealmModels.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/23/21.
//

import Foundation
import RealmSwift


class BGPlayer: Object {
    @objc dynamic var name: String = "Player 1"
    @objc dynamic var notes = ""
    let playerStatus = List<Status>()
    
}

class BGGame: Object {
    @objc dynamic var name: String = "Game 1"
    @objc dynamic var notes = ""
    let records = List<BGRecord>()
}

class BGRecord: Object {
    @objc dynamic var startTime = Date()
    @objc dynamic var endTime = Date(timeIntervalSinceNow: 3600)
    @objc dynamic var notes = ""
    let allStatus = List<Status>()
    let game = LinkingObjects(fromType: BGGame.self, property: "records")
    
    
}

class Status: Object {
    let score = RealmOptional<Int>() // score is optional
    @objc dynamic var value: Int = 0
    @objc dynamic var result: String {
        if self.value == 0 {
            return "Tie"
        }else if self.value > 0{
            return "Win"
        }else{
            return "loss"
        }
    }
    let record = LinkingObjects(fromType: BGRecord.self, property: "allStatus")
    let player = LinkingObjects(fromType: BGPlayer.self, property: "playerStatus")
    
}

func addRecords(record:BGRecord) {
    let realm = try! Realm()
    try! realm.write{
        realm.add(record)
    }
    
}

func addPlayer(player: BGPlayer)  {
    let realm = try! Realm()
    try! realm.write{
        realm.add(player)
    }
}

func addGame(game: BGGame)  {
    let realm = try! Realm()
    try! realm.write{
        realm.add(game)
    }
}

func addStatus(status: Status)  {
    let realm = try! Realm()
    try! realm.write{
        realm.add(status)
    }
}

func defaultRecord()  {
    let record = BGRecord()
    let player = BGPlayer()
    let game = BGGame()
    let status = Status()
    player.playerStatus.append(status)
    record.allStatus.append(status)
    game.records.append(record)
    let realm = try!Realm()
    try! realm.write{
        realm.add(record)
        realm.add(game)
        realm.add(status)
        realm.add(player)
    }
    
 
    
//    let playerName = status.record.first?.game
    
}

func addPlayerStatus(record: BGRecord) {
    let player = BGPlayer()
    let status = Status()
    player.playerStatus.append(status)
    record.allStatus.append(status)
}
