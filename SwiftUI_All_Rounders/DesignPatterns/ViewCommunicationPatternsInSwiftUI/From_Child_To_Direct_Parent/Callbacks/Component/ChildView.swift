//
//  ChildView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

// Child View without any parameter
struct ChildView: View {
  var onAddItem: () -> ()
  
    var body: some View {
      Button(action: {onAddItem()}) {
        Text("Add Item")
      }
      .padding()
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
      ChildView(onAddItem: {})
    }
}
