//
//  Player.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/16/21.
//

import Foundation

protocol PlayerProtocol{
    var name: String { get set }
    var games: [Game] { get set }
    var records: [Record] { get set }
//    func frequentGame() -> [Game]
//    func masterGame() -> [Game]
}

struct Player: PlayerProtocol{
    var games: [Game] = []
    
    var name: String = ""
    
    var records: [Record] = []
    mutating func addGames(game:Game) {
        self.games.append(game)
    }
    mutating func addRecord(record:Record){
        self.records.append(record)
    }
    mutating func changeName(name:String){
        self.name = name
    }
}
