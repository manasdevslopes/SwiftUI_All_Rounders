//
//  PreferenceKey1View.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

struct PreferenceKey1View: View {
  @State private var result: String = ""
  
    var body: some View {
      NavigationStack {
        VStack {
          Text(result).font(.largeTitle).bold()
          HStack {
            Rectangle()
            Rectangle()
          }
          Rectangle()
        }
        .navigationTitle("PreferenceKeys")
      }
      // Step 4
      .updateString("Hello SwiftUI")
      // Step 3
      .onPreferenceChange(UpdateString.self) { newValue in
        result = newValue
      }
    }
}

struct PreferenceKey1View_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKey1View()
    }
}

// Step 2
extension View {
  func updateString(_ value: String) -> some View {
    self.preference(key: UpdateString.self, value: value)
  }
}

// Step 1
struct UpdateString: PreferenceKey {
  typealias Value = String
  
  static var defaultValue: String = ""
  
  static func reduce(value: inout String, nextValue: () -> String) {
    value = nextValue()
  }
}
