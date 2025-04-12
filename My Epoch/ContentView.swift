import SwiftUI

struct ContentView: View {
    @State private var userInput = ""
    @State private var savedText = ""
    @State private var isNavigationActive = false

    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .font(.system(size: 52))

                Text("Hello, world!")
                    .font(.system(size: 52))

                TextField("What are you working on?", text: $userInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .font(.system(size: 22))

                Button("Enter") {
                    UserDefaults.standard.set(userInput, forKey: "savedText")
                    savedText = userInput
                    isNavigationActive = true
                }
                .frame(width: 350, height: 45)
                .background(Color("AccentColor"))
                .foregroundColor(.white)
                .font(.system(size: 31))
                .cornerRadius(20)

                Spacer()
            }
            .padding()
            .navigationTitle("Start")
            .navigationDestination(isPresented: $isNavigationActive) {
                StartDate()
            }
        }
    }
}

#Preview {
    ContentView()
}

