//
//  DetailsView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

// Detail View
struct DetailsView: View {
  var item: Item
    var body: some View {
      Text("Detail for \(item.title)")
        .font(.largeTitle)
        .padding()
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
      DetailsView(item: Item(title: "Hello World"))
    }
}
