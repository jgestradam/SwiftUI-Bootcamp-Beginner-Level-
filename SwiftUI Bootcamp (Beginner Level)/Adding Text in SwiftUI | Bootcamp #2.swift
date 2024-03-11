//
//  Adding Text in SwiftUI | Bootcamp #2.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Joseph Estrada on 3/11/24.
//

import SwiftUI

struct Adding_Text_in_SwiftUI___Bootcamp__2: View {
    var body: some View {
        Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning a lot.")
              //.font(.body)
              //.fontWeight(.semibold)
              //.underline(true, color: Color.red)
              //.italic()
              .foregroundColor(.red)
              .frame(width: 200, height: 100, alignment: .center)
              .minimumScaleFactor(0.1)
    }
}

#Preview {
    Adding_Text_in_SwiftUI___Bootcamp__2()
}
