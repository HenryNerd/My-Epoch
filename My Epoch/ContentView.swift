//
//  ContentView.swift
//  My Epoch
//
//  Created by Henry Veedahl on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.system(size: 52))
            Text("Hello, world!")
                .font(.system(size: 52))
        }
        .padding()
        TextField("What are you working on?", text: $userInput)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .font(.system(size: 22))
        Button("Enter") {
                        UserDefaults.standard.set(userInput, forKey: "savedText")
                    }
        .frame(width: 366, height: 45)
        .background(Color("AccentColor"))
        .foregroundColor(.white)
        .font(.system(size: 31))
        .cornerRadius(20)
        
    }
}

#Preview {
    ContentView()
}
