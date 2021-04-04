//
//  PlayerRecord.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/16/21.
//

import Foundation
protocol PlayerRecordProtocol {
    var recordIndex: Int { get set }
    var PlayerName: String{ get set }
    var score: Int { get set }
    var status: Int{ get set }
    var notes: String{ get set }
}


struct PlayerRecord: PlayerRecordProtocol {
    var recordIndex: Int = 0
    
    var PlayerName: String = ""
    
    var score: Int = 0
    
    var status: Int = 0
    
    var notes: String = ""
}
