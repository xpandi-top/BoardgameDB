//
//  RecordTableView.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/18/21.
//

import SwiftUI

struct RecordTableView: View {
    
    var body: some View {
        VStack {
            
            List(recordList.recordsList,id:\.recordIndex){ record in
                RecordRow(record: record)
                
            }
            
            
        }
    }
}

struct RecordTableView_Previews: PreviewProvider {
    static var previews: some View {
        RecordTableView()
    }
}
