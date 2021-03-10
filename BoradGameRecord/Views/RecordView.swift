//
//  RecordView.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/10/21.
//

import SwiftUI

struct RecordView: View {
    @State var input: String = ""
    @State var startDate: Date = Date()
    @State var endDate: Date = Date()
    @State var players: String = ""
    
    var body: some View {
        HStack {
            VStack{
                TextField("GameName", text: $input)
                Text(input)
                DatePicker("Start Time", selection: $startDate)
                DatePicker("End Time", selection: $endDate)
                Text("Game duration is \(DateInterval(start: startDate, end: endDate).duration)")
                
                TextField("Players", text: $players)
                
            }
            .padding()
            
            ScrollView{
                let infos = "Game name is \(input) \nstart Date is \(startDate) \nend Date is \(endDate)\nPlayes: \(players) ".description
                TextEditor(text: .constant(infos))
               
            }
            .padding()
        }
       
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
