//
//  RecordModel.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/11/21.
//

import Foundation

protocol RecordProtocol {
    var recordIndex: Int  { get set }
    var boardGameName: String  { get set }
    var startTime: Date { get set }
    var endTime: Date { get set }
    var players: [Player] { get set }
    var notes: String { get set }
}
struct Record: RecordProtocol{
    var players: [Player] = []
    
    var recordIndex: Int = 0
    
    var boardGameName: String = ""
    
    var startTime: Date = Date()
    
    var endTime: Date = Date(timeIntervalSinceReferenceDate: 3600)
    
    var notes: String = ""
    
//    init(recordindex: Int, boardGameName: String, startTime: Date, endTime:Date,players:[Player], notes:String) {
//        self.recordIndex = recordindex
//        self.boardGameName = boardGameName
//        self.startTime = startTime
//        self.endTime = endTime
//        self.notes = notes
//        self.players = players
//    }
}



