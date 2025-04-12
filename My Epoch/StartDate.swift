import SwiftUI

struct StartDate: View {
    @AppStorage("userInputText") private var savedText: String = ""
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            Text("Saved text: \(savedText)")
                .font(.title)
                .padding()

            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()

            Text("You selected: \(selectedDate, formatter: DateFormatter.shortDate)")
                .font(.title2)
                .padding()
        }
        .padding()
        .navigationTitle("Start Date");
    }
}

extension DateFormatter {
    static var shortDate: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
}

#Preview {
    StartDate()
}
