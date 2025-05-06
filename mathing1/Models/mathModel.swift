import Foundation
import SwiftUICore


struct questionModel:Codable,Hashable{
    
    var question:String
    var answer:Int
    var Merged:[Int]
}



struct StatRow: View {
    
    let label: String
    let value: String

    var body: some View {
        HStack(spacing: 20) {
            Text(label)
                .bold()
                .font(.headline)

            Spacer()

            Text(value)
                .font(.headline)
        }
        .padding()
    }
}
