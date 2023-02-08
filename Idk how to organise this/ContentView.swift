import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FlashView()
                .tabItem{
                    Label("Browse", systemImage: "Person")
                    
                }
            StudyView()
                .tabItem{
                    Label("Study", systemImage: "Person")
                }
        }
    }
}
