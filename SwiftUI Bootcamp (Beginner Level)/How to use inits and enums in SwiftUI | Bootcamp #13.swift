//
//  How to use inits and enums in SwiftUI | Bootcamp #13.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Joseph Estrada on 3/11/24.
//

import SwiftUI

struct How_to_use_inits_and_enums_in_SwiftUI___Bootcamp__13: View {
    
    var backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        
      self.count = count

      if fruit == .apple {
          
        self.title = "Apples"
        self.backgroundColor = .red

      } else {

        self.title = "Oranges"
        self.backgroundColor = .orange

      }
    }

    enum Fruit {
      case apple
      case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
          Text("\(count)")
            .font(.largeTitle)
            .foregroundColor(.white)
            .underline()

          Text(title)
            .font(.headline)
            .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        How_to_use_inits_and_enums_in_SwiftUI___Bootcamp__13(count: 100, fruit: .orange)
        How_to_use_inits_and_enums_in_SwiftUI___Bootcamp__13(count: 101, fruit: .apple)
    }
}
