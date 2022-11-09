import SwiftUI

struct DefaultsKeys {
    static let keyOne = "firstStringKey" 
    static let keyTwo = "secondStringKey"
}

struct ContentView: View {
    @State var Mytext = UserDefaults.standard.string(forKey: DefaultsKeys.keyOne) ?? "Edit this text here with the text to be incremented" 
    @State var CountColor: Color = .black
    @State var CountMax: Float = 280
    var body: some View {
        VStack{
            Text("**Incremental Reader**") 
                .font(.system(.largeTitle, design: .monospaced)) //Font choice
            TextEditor(text: $Mytext)
                .font(.system(.body, design: .monospaced))
                .border(.mint) 
                .padding()
                .onChange(of: Mytext) { 
                    newValue in
                    if Mytext.count > Int(CountMax) {
                        CountColor = .red}
                    else {CountColor = .black}
                }
            HStack{
                Button("Increment!"){
                    Mytext = ("Incremented Text")
                }
                .padding()
                Button("Revert!"){
                    Mytext = ("Reverted Text")
                }
            }
        }
        
        }
}
