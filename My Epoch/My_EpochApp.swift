//
//  My_EpochApp.swift
//  My Epoch
//
//  Created by Henry Veedahl on 4/11/25.
//

import SwiftUI

@main
struct My_EpochApp: App {
    @AppStorage("userInputText") private var savedText: String = ""
    
    var body: some Scene {
        WindowGroup {
            Text("Saved text: \(savedText)")
                            .font(.title)
                            .padding()
            ContentView()
    .navigationTitle("StartDate")
        }
    }
}
