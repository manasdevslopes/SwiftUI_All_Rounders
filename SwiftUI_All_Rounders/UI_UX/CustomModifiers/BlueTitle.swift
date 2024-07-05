//
//  BlueTitle.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 05/07/24.
//

import SwiftUI

struct BlueTitle: ViewModifier {
  let radius: CGFloat
  
  func body(content: Content) -> some View {
    content
      .font(.largeTitle).foregroundColor(.white).padding(10).background(.blue).cornerRadius(radius)
  }
}

extension View {
  func blueTitle(radius: CGFloat = 10) -> some View {
    modifier(BlueTitle(radius: radius))
  }
}
