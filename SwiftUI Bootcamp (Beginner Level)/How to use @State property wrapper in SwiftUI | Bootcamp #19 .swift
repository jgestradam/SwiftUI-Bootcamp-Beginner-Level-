//
//  How to use @State property wrapper in SwiftUI | Bootcamp #19 .swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Joseph Estrada on 3/12/24.
//

import SwiftUI

struct How_to_use__State_property_wrapper_in_SwiftUI___Bootcamp__19_: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My title"
    @State var count: Int = 0

    
    var body: some View {
        // Background
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            // Content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)

                Text("Count: \(count)")
                    .font(.headline)
                    .underline()

                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count = count + 1
                    }

                    Button("BUTTON 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    How_to_use__State_property_wrapper_in_SwiftUI___Bootcamp__19_()
}
