
import SwiftUI

struct Summary: View {
    
    var played:String
    var score:Int
    
    var body: some View {
        
        NavigationStack{
            
            
            VStack(alignment:.center,spacing:20){
                
                Text("All Done").font(.largeTitle).bold()
                
                
                VStack {
                    StatRow(label: "You played", value: "\(played)")
                    StatRow(label: "You Score", value: "\(score)")
                }

                
            }
            
            VStack(spacing:30){
                
                NavigationLink(destination:ContentView().navigationBarBackButtonHidden(true)){
                    
                    Text("Back to main-menu")
                        .font(.headline)
                        .frame(width:250,height:50)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
            }.padding()
            
        }
    }
}

#Preview {
    Summary(played:"Basic", score: 0)
}
