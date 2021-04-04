//
//  testVIew.swift
//  BoradGameRecord
//
//  Created by Di Mo on 3/22/21.
//

import SwiftUI
import RealmSwift

struct testVIew: View {
    @EnvironmentObject var testData: TestData
//    @State private var input: String = ""
    var body: some View {
        VStack {
            TextField("Please input", text: $testData.testString)
            Text(testData.testString)
            Button(action: test, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            Text(testData.testString)
            
            Button(action: addToRealm, label: {
                Text("TestRealmAdd")
            })
            
            Button(action: defaultRecord, label: {
                Text("AddDeafulRecord")
            })
        }
        .padding()
    }
    func test() {
        testData.testString = "button test"
    }
    
    func addToRealm()  {
        let realm  = try! Realm()
        let myFirstNote = Note()
        myFirstNote.content = "second content"
        myFirstNote.title = "second Note"
        
        do{
            try realm.write{
                realm.add(myFirstNote)
            }
        }catch{
            print(error.localizedDescription)
        }
    }
}

struct testVIew_Previews: PreviewProvider {
    static var previews: some View {
        testVIew()
            .environmentObject(TestData())
    }
}
