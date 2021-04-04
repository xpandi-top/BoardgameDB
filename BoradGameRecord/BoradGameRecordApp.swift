//
//  BoradGameRecordApp.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/10/21.
//

import SwiftUI

@main
struct BoradGameRecordApp: App {
    
    @StateObject private var testData = TestData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(testData)
        }
    }
}
