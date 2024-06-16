//
//  BackgroundViewModifier.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

struct WithBackground: ViewModifier {
  let color: Color
  func body(content: Content) -> some View {
    ZStack {
      Rectangle().fill(color.gradient).opacity(0.3)
        .ignoresSafeArea()
      content
    }
  }
}

extension View {
  func withBackground(color: Color) -> some View {
    modifier(WithBackground(color: color))
  }
}
