//
//  Tag.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 05/07/24.
//

import SwiftUI

struct Tag: ViewModifier {
  enum BGColor {
    case fixedColor(color: Color)
    case randomColor
  }
  let bgColor: BGColor
  let opacity: Double
  
  func body(content: Content) -> some View {
    let tagColor: Color
    switch bgColor {
      case .fixedColor(color: let color):
        tagColor = color
      case .randomColor:
        tagColor = Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
    
    return content
      .font(Font.caption.weight(.bold)).padding(5).background(tagColor).opacity(opacity)
      .foregroundColor(Color.white).cornerRadius(5)
  }
}

extension View {
  func tag(_ bgColor: Tag.BGColor, at opacity: Double = 1) -> some View {
    self.modifier(Tag(bgColor: bgColor, opacity: opacity))
  }
}
