import Foundation


class Solution:ObservableObject{
    
    @Published var Qt:[questionModel]=[]
    @Published var isLoading=false
    
    func getTen() async{
        
        guard let url=URL(string:"https://test-1-1-math.vercel.app/q10")else{
            print("Invalid URL")
            return
        }
        
        do{
            let(data,_)=try await URLSession.shared.data(from:url)
            let dd=try JSONDecoder().decode([questionModel].self, from: data)
            Qt=dd
            isLoading=true
        }
        catch{
            print(error)
            return
        }
    }
    
    
    
    func getSix() async{
        
        guard let url=URL(string:"https://test-1-1-math.vercel.app/q60")else{
            print("Invalid URL")
            return
        }
        
        do{
            let(data,_)=try await URLSession.shared.data(from:url)
            let dd=try JSONDecoder().decode([questionModel].self, from: data)
            Qt=dd
            isLoading=true
        }
        catch{
            print(error)
            return
        }
    }
    
    
    
    
}
