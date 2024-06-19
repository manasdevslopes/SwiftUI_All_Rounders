//
//  ParentsView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

// When we need to pass data in one way – use a callback.
// Parent View
struct ParentsView: View {
  @State private var items: [Item] = []
  @State private var selectedItem: Item?
  
    var body: some View {
      VStack {
        ChildView(onAddItem: addItem)
        List(items) { item in
          ItemRowView(item: item, onDetail: showDetail)
        }
        .sheet(item: $selectedItem) { item in
          DetailsView(item: item)
        }
      }
    }
}

extension ParentsView {
  private func addItem() {
    let newItem = Item(title: "Item \(items.count + 1)")
    items.append(newItem)
  }
  
  private func showDetail(for item: Item) {
    selectedItem = item
  }
}

struct ParentsView_Previews: PreviewProvider {
    static var previews: some View {
      ParentsView()
    }
}
