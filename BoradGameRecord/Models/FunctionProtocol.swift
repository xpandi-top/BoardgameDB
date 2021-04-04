//
//  FunctionProtocol.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/16/21.
//

import Foundation

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

protocol BasicFunctionsProtocol {
    func add()
    func delet()
    func Find()
    func update()
}
// for Records
protocol RecordFunctionProtocol {
    mutating func addRecord()
    func deletRecord()
}
// for PlayerRecords
protocol PlayerRecordFunctionProtocol {
    mutating func addPlayerRecord(recordIndex:Int)
    func deletPlayerRecord()
}
// for Game List
protocol GameFunctionProtocol {
    func addGame()
    func deletGame()
}

// for Player list
protocol PlayerFunctionProtocol {
    func addPlayer()
    func deletPlayer()
}


struct RecordsList: RecordFunctionProtocol {
    var recordsList:[Record] = []
    
    mutating func addRecord() {
        var newRecord: Record
        if let lastRecord = recordsList.last {
            newRecord = Record(recordIndex:lastRecord.recordIndex + 1)
            
        }else{
            newRecord = Record()
        }
        recordsList.append(newRecord)
        
    }
    
    func deletRecord() { //暂时写成只删除这个
        recordsList.dropLast()
    }
}

struct PlayerRecordList: PlayerRecordFunctionProtocol {
    var playerRecordList: [PlayerRecord] = []
    mutating func addPlayerRecord(recordIndex:Int) {
        var newPlayerRecord = PlayerRecord(recordIndex: recordIndex)
        playerRecordList.append(newPlayerRecord)
    }
    mutating func addPlayerRecord(recordIndex:Int, naem:String) {
        var newPlayerRecord = PlayerRecord(recordIndex: recordIndex, PlayerName: naem)
        playerRecordList.append(newPlayerRecord)
    }
    func deletPlayerRecord() {
        playerRecordList.dropLast() // 暂时写成这样
    }
    

}

struct GameList {
    var GameList:[Game] = []
}

struct PlayerList {
    var playerList:[Player] = []
}
