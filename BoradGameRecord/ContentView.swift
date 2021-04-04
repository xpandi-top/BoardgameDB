//
//  ContentView.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/10/21.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
//    @EnvironmentObject var testData: TestData
    var body: some View {
        testVIew()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TestData())
    }
}
