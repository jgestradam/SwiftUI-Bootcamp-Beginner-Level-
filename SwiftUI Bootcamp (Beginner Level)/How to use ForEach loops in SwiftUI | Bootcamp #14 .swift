//
//  How to use ForEach loops in SwiftUI | Bootcamp #14 .swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Joseph Estrada on 3/11/24.
//

import SwiftUI

struct How_to_use_ForEach_loops_in_SwiftUI___Bootcamp__14_: View {
    
    let data: [String] = ["hi", "Hello", "Everyone"]
    
    var body: some View {
      VStack {

        ForEach(data.indices) { index in
          Text("\(data[index]): \(index)")
        }
          
       // ForEach(0..<100) { index in
         // Circle()
       //     .frame(height: 50)
       // }

      }
    }
}

#Preview {
    How_to_use_ForEach_loops_in_SwiftUI___Bootcamp__14_()
}
