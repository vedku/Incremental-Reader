import SwiftUI

struct FlashView: View{
    @State private var notes = [String]()
    @State private var newNote = ""
    
    var body: some View{
        VStack{
            Text("Browse Notes")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Button("Add notes"){
                self.notes.append(self.newNote)
                self.newNote = ""
            }
            List{
                ForEach(notes, id: \.self) { note in
                    Text(note)
                }
            }
            HStack{
                TextField("Add a new note", text: $newNote)
                Button(action: {
                    self.notes.append(self.newNote)
                    self.newNote = ""
                }) {
                    Text("Add")
                }
            }.padding()
        }
    }
    
}

