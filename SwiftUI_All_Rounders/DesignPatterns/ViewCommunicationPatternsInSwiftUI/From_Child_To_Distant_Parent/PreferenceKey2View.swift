//
//  PreferenceKey2View.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

struct PreferenceKey2View: View {
  @State private var result: Int = 0
  
  var body: some View {
    NavigationStack {
      VStack {
        Text("\(result)").font(.largeTitle).bold()
          .updateInt(7)
        HStack{
          Rectangle()
          Rectangle()
        }
        .updateInt(5)
        Rectangle()
          .updateInt(2)
      }
      .navigationTitle("Example 2")
    }
    // Step 4
    .updateInt(5)
    // Step 3
    .onPreferenceChange(UpdateInt.self) { newValue in
      result = newValue
    }
  }
}

struct PreferenceKey2View_Previews: PreviewProvider {
  static var previews: some View {
    PreferenceKey2View()
  }
}

// Step 1
struct UpdateInt: PreferenceKey {
  typealias Value = Int
  
  static var defaultValue: Int = 0
  
  static func reduce(value: inout Int, nextValue: () -> Int) {
    value = value + nextValue()
  }
}

// Step 2
extension View {
  func updateInt(_ value: Int) -> some View {
    self.preference(key: UpdateInt.self, value: value)
  }
}
