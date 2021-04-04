//
//  PlayerView.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/18/21.
//

import SwiftUI

struct PlayerView: View {
    @State var name: String = ""
    @State var games: [Game] = []
    @State var records: [Record] = []
    @State var notes:String = ""
    var body: some View {
        VStack{
            TextField("Name", text: $name)
            TextField("Notes", text: $notes)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
