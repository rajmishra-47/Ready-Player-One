
import SwiftUI

struct UnderAMinute: View {
    @StateObject private var obj=Solution()
   
    @State var count=0
    @State var index=0
    @State var answer=0
    @State var flag=false
    @State private var counter = 1
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
     
        NavigationStack{
            
            VStack{
                
                
                
                if !obj.isLoading{
                    ProgressView("Loading....")
                }
               
                else {
                    
                    
                    VStack(alignment: .center){
                        
                        Text("Under-A-Minute")
                            .bold()
                            .font(.title)
                        
                    }.padding()
                    
                    
                        Text("Timer: \(counter)")
                            .font(.headline)
                            .onReceive(timer) { _ in
                                if counter < 60 {
                                    counter += 1
                                }
                                else{
                                    flag=true
                                }
                            }
                    
                 
                    VStack {
                        if index < obj.Qt.count {
                            VStack(spacing: 20) {
                                
                                StatRow(label: "Question No.\(index+1)", value:"Score:\(count)")
                                
                                Text(obj.Qt[index].question)
                                    .font(.title)
                                    .bold()
                                
                                ForEach(obj.Qt[index].Merged, id: \.self) { option in
            
                                        Button("\(option)") {
                                            
                                            if option == obj.Qt[index].answer {
                                                        count += 1
                                                    }
                                            
                                            else{
                                                count-=1
                                            }
                                            
                                            withAnimation {
                                            
                                                if index < obj.Qt.count - 1 {
                                                    index += 1
                                                }
                                                
                                                else{
                                                    flag=true
                                                }
                                                
                                            
                                            }
                                        }.font(.headline)
                                        .frame(width:150,height:50)
                                        .background(Color.black)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)                            }
                            }
                            
                        }
                    }
                    .animation(.easeInOut, value: index)
                }

            
            }.task{
                await obj.getSix()
            }
            .navigationDestination(isPresented: $flag) {
                Summary(played:"Under-A-Minute", score: count)
                    .navigationBarBackButtonHidden(true)
            }

        }
    }
}

#Preview {
    UnderAMinute()
}
