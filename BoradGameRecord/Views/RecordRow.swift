//
//  RecordRow.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/18/21.
//

import SwiftUI

struct RecordRow: View {
    var record: Record
    var body: some View {
        HStack {
            Text("\(record.recordIndex)")
            Text("\(record.boardGameName)")
            Text("\(record.startTime.description)")
            Text("\(record.endTime.description)")
            Text("\(record.players.description)")
            Text("\(record.notes)")
        }
        .padding()
    }
}

struct RecordRow_Previews: PreviewProvider {
    static var previews: some View {
        RecordRow(record: recordList.recordsList[0])
    }
}
