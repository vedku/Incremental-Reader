import SwiftUI

struct DefaultsKeys {
    static let keyOne = "firstStringKey" 
    static let keyTwo = "secondStringKey"
}

struct ContentView: View {
    @State var Mytext = UserDefaults.standard.string(forKey: DefaultsKeys.keyOne) ?? "Edit this text here with the text to be incremented" 
    @State var incrementedtext = []
    var body: some View {
        VStack{
            Text("**Incremental Reader**") 
                .font(.system(.largeTitle, design: .monospaced))
            TextEditor(text: $Mytext)
                .font(.system(.body, design: .monospaced))
                .border(.mint) 
        }
        HStack{
            Button("Increment!"){
                Mytext = ("Inverted Text!")
            }
            .padding()
            Button("Revert!"){
                Mytext = ("Reverted Text")
            }
        }
    }
}
