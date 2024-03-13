//
//  How to use @Binding property wrapper in SwiftUI | Bootcamp #22.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Joseph Estrada on 3/12/24.
//

import SwiftUI

struct How_to_use__Binding_property_wrapper_in_SwiftUI___Bootcamp__22: View {
    @State var backgroundColor: Color = Color.green
        @State var title: String = "Title"
        
        var body: some View {
            ZStack {
                backgroundColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text(title)
                        .foregroundColor(.white)
                    
                    ButtonView(backgroundColor: $backgroundColor, title: $title)
                }
            }
        }
}

struct ButtonView: View {
  
  @State var buttonColor: Color = Color.blue
  @Binding var backgroundColor: Color
  @Binding var title: String
  
  var body: some View {
    Button(action: {
      backgroundColor = Color.orange
      buttonColor = Color.pink
        title = "New title"
    }) {
        Text("Button")
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(buttonColor)
        .cornerRadius(10)
    }
  }
}

#Preview {
    How_to_use__Binding_property_wrapper_in_SwiftUI___Bootcamp__22()
}
