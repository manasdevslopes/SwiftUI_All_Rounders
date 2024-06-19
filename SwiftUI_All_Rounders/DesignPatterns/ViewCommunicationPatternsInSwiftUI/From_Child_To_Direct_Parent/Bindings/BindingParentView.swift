//
//  BindingParentView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

// Parent View
// When we need to pass data in two ways – use @Binding.
struct BindingParentView: View {
  @State private var name: String = ""
  
    var body: some View {
      VStack {
        TextField("Enter your name", text: $name)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding()
        ChildViewBinding(name: $name)
      }
      .padding()
    }
}

struct BindingParentView_Previews: PreviewProvider {
    static var previews: some View {
        BindingParentView()
    }
}


// Child View
struct ChildViewBinding: View {
  @Binding var name: String
  
  var body: some View {
    VStack {
      Text("Hello, \(name)!")
        .font(.largeTitle)
        .padding()

      Button(action: {
        name = "SwiftUI"
      }) {
        Text("Set Name to SwiftUI")
          .padding()
          .background(Color.blue)
          .foregroundColor(.white)
          .cornerRadius(8)
      }
    }
    .padding()
  }
}
