//
//  RecordModel.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/11/21.
//

import Foundation

protocol RecordProtocol {
    var recordIndex: Int  { get }
    var boardGameName: String  { get set }
    var startTime: Date { get set }
    var endTime: Date { get set }
    var players: [Player] { get set }
    var notes: String { get set }
}

protocol AutoCheckProtocol {
    func recordIndexGen()->Int
    func checkStatus()->Bool
    func chekName()-> String?
}

protocol BasicOperationProtocol {
    func syncData()
    func uploadData()
    func deleteData()
    func filterData()
}

protocol PlayerProtocol{
    var name: String { get set }
    var games: [Game] { get set }
    var records: [Record] { get set }
//    func frequentGame() -> [Game]
//    func masterGame() -> [Game]
}

protocol GameProtocol {
    var gameName: String { get set }
    var playTimes: Int { get set }
    var records:[Record] { get set }
    // bestPlayers: [Player]
}

protocol PlayerRecordProtocol {
    var recordIndex: Int { get set }
    var PlayerName: String{ get set }
    var score: Int { get set }
    var status: Int{ get set }
    var notes: String{ get set }
}

class Record: RecordProtocol{
    var players: [Player]
    
    var recordIndex: Int
    
    var boardGameName: String
    
    var startTime: Date
    
    var endTime: Date
    
    var notes: String
    
    init(recordindex: Int, boardGameName: String, startTime: Date, endTime:Date,players:[Player], notes:String) {
        self.recordIndex = recordindex
        self.boardGameName = boardGameName
        self.startTime = startTime
        self.endTime = endTime
        self.notes = notes
        self.players = players
    }
}

class Player: PlayerProtocol{
    var games: [Game] = []
    
    var name: String = ""
    
    var records: [Record] = []
    
    
}


class Game: GameProtocol{

    var gameName: String = ""

    var playTimes: Int = 0

    var records: [Record] = []
}
