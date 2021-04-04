//
//  PlayerRecordView.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/16/21.
//

import SwiftUI

struct PlayerRecordView: View {
    var player: Player
    @State var name : String = "s"
    @State var score:Int = 0
    @State var status:Int = 0
    @State var notes: String = ""
    let numberFormatter = NumberFormatter()
//    var name = player.name
    var body: some View {
        HStack {
            VStack {
                Text("name: \(player.name)")
                Text("score: \(score)")
                Text("status: \(status)")
                Text("notes: \(notes)")
            }
            VStack{
                HStack {
                    Text("Name")
                    TextField("Name", text: $name)
                }
                HStack {
                    Text("Score")
                    TextField("Score", value: $score,formatter: numberFormatter)
                }
                HStack {
                    Text("Status")
                    TextField("Status", value: $status, formatter: numberFormatter)
                }
                HStack {
                    Text("Notes")
                    TextField("Notes", text: $notes)
                }

            }
            .padding()
        }
    }
}

struct PlayerRecordView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRecordView(player: data.players[0])
    }
}



