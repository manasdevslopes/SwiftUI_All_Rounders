//
//  ItemRowView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

// Child View with parameter Item
struct ItemRowView: View {
  let item: Item
  let onDetail: (Item) -> ()
  
  var body: some View {
    HStack {
      Text(item.title)
      Spacer()
      Button(action: { onDetail(item) }) {
        Image(systemName: "info.circle").foregroundColor(.blue)
      }
    }
    .padding()
  }
}

struct ItemRowView_Previews: PreviewProvider {
  static var previews: some View {
    ItemRowView(item: Item(title: "Hello World"), onDetail: {_ in })
  }
}
