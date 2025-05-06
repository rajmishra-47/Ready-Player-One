import SwiftUI

struct ContentView: View {
    var body: some View {
        
            NavigationStack{
                
                VStack(spacing:50){
                    
                    VStack{
                        Text("Ready Player One")
                            .font(.largeTitle)
                            .bold()
                        
                        Text("Make yourself sharper")
                            .bold()
                    }
                    
                    
                    VStack(spacing:50){
                        
                        
                        NavigationLink(destination:UnderAMinute()){
                            
                            Text("Under-A-Minute")
                                .font(.headline)
                                .frame(width:150,height:50)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)

                            
                        }
                            
                        
                        NavigationLink(destination:TenView()){
                            
                            Text("Random-10")
                                .font(.headline)
                                .frame(width:150,height:50)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)

                            
                        }
                        
                        
                    }.padding()
                    
                    
                }
                .padding()
                
            }
            
        
    }
}

#Preview {
    ContentView()
}
