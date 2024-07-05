//
//  CustomModifiers.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 05/07/24.
//

import SwiftUI

struct CustomModifiers: View {
    var body: some View {
      VStack {
        Text("Hello, World!")
          .blueTitle(radius: 20)
        
        Text("Hello, World!")
          .tag(.fixedColor(color: .black), at: 0.8)
        
        Text("Hello, World!")
          .tag(.randomColor)
      }
    }
}

struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}
