//
//  CustomEnvironmentKeysView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

struct CustomEnvironmentKeysView: View {
  @Environment(\.safeArea) var safeArea
    var body: some View {
      NavigationStack {
        Color.red
          .navigationTitle("EnvironmentKey")
          .overlay {
            Text("Top = \(safeArea.top)\nBottom = \(safeArea.bottom)")
            NavigationLink {
              DetailView()
            } label: {
              Text("Detail View")
            }
            .offset(y: 40)
          }
      }
    }
}

struct DetailView: View {
  @Environment(\.safeArea) var safeArea
  var body: some View {
    Color.blue
      .navigationTitle("Detail View")
      .overlay {
        Text("Top = \(safeArea.top)\nBottom = \(safeArea.bottom)")
      }
  }
}

struct CustomEnvironmentKeysView_Previews: PreviewProvider {
    static var previews: some View {
        CustomEnvironmentKeysView()
    }
}
