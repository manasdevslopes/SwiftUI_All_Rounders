//
//  PreferenceKey4View.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

struct PreferenceKey4View: View {
  var strings = ["Something Really Realy big", "Something Bigger", "Small"]
  @State private var maxWidth: CGFloat = 300
  
    var body: some View {
      VStack {
        ForEach(strings, id: \.self) { string in
          Text(string)
            .overlay {
              GeometryReader { proxy in
                Color.clear
                  .maxViewWidth(proxy.size.width)
              }
            }
        }
        Rectangle()
          .fill(Color.blue)
          .frame(width: maxWidth, height: 2)
          .padding()
      }
      .onPreferenceChange(MaxViewWidth.self) { newValue in
        maxWidth = newValue
      }
    }
}

struct PreferenceKey4View_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKey4View()
    }
}

// Step 1
struct MaxViewWidth: PreferenceKey {
  typealias Value = CGFloat
  
  static var defaultValue: CGFloat = 0
  
  static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
    value = max(value, nextValue())
  }
}

// Step 2
extension View {
  func maxViewWidth(_ value: CGFloat) -> some View {
    self.preference(key: MaxViewWidth.self, value: value)
  }
}
