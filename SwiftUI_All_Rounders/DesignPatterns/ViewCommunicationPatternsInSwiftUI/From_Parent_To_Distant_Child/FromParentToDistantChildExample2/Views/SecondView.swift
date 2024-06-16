//
//  SecondView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

struct SecondView: View {
  @Environment(\.appTheme) var appTheme
  
  var body: some View {
    VStack {
      Text("Just another view")
      GroupBox {
        Text("Second View Group box")
        
      }
      .environment(\.colorScheme, .dark)
    }
    .withBackground(color: appTheme.secondary)
    .navigationTitle("Second View")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct SecondView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      SecondView()
    }
  }
}
