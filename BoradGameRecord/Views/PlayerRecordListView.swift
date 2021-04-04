//
//  PlayerRecordListView.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/25/21.
//

import SwiftUI

struct PlayerRecordListView: View {
    var body: some View {
        List(data.players, id: \.name) { player in
            PlayerRecordView(player: player)
        }
        
    }
}

struct PlayerRecordListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRecordListView()
    }
}
