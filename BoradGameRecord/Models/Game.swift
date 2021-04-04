//
//  Game.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/16/21.
//

import Foundation
protocol GameProtocol {
    var gameName: String { get set }
    var playTimes: Int { get set }
    var records:[Record] { get set }
    // bestPlayers: [Player]
}

struct Game: GameProtocol{

    var gameName: String = ""

    var playTimes: Int = 0

    var records: [Record] = []
}
