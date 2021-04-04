//
//  RecordView.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/10/21.
//

import SwiftUI
import RealmSwift

struct RecordView: View {
    @State var input: String = ""
    @State var startDate: Date = Date()
    @State var endDate: Date = Date(timeIntervalSinceNow: 3600)
    @State var players: String = ""
    @State var playerLists: [String] = ["p1"]
    
    var body: some View {
        HStack {
            VStack{
                TextField("GameName", text: $input)
                Text(input)
                DatePicker("Start Time", selection: $startDate)
                DatePicker("End Time", selection: $endDate)
                Text("Game duration is \(DateInterval(start: startDate, end: endDate).duration)")
                
                TextField("Players", text: $players)
                
                Button(action: addRecord, label: {
                    Text("AddRecord")
                })
                
            }
            .padding()
            
            ScrollView{
                let infos = "Game name is \(input) \nstart Date is \(startDate) \nend Date is \(endDate)\nPlayes: \(players) ".description
                TextEditor(text: .constant(infos))
               
            }
            .padding()
            
        }

    }
    func addRecord() {
        let record = BGRecord()
        record.startTime = startDate
        record.endTime = endDate
        let player = BGPlayer()
        player.name = players
        let game = BGGame()
        game.name = input
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
    }
    
//    func addPlayer(name: String){
//        let player = BGPlayer()
//        player.name = name
//
//    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
