import SwiftUI

struct TenView: View {
    
    @StateObject private var obj=Solution()
   
    @State var count=0
    @State var index=0
    @State var answer=0
    @State var flag=false
   
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                
                
                if !obj.isLoading{
                    ProgressView("Loading....")
                }
               
                else {
                    
                    
                    VStack(alignment: .center){
                        
                        Text("Welcome to Random-10")
                            .bold()
                            .font(.title)
                        
                    }.padding()
                 
                    VStack {
                        if index < obj.Qt.count {
                            VStack(spacing: 20) {
                                
                                StatRow(label: "Question: \(index+1)", value:"Score:\(count)")
                                
                                
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
                                                    flag.toggle()
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
                await obj.getTen()
            }
            .navigationDestination(isPresented: $flag) {
                Summary(played:"Random-10", score: count)
                    .navigationBarBackButtonHidden(true)
            }

        }
    }
}

#Preview {
    TenView()
}
