//
//  PreferenceKey3View.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

struct PreferenceKey3View: View {
  @State private var total: Int = 0
  var scores: [Int] = [10, 14, 28, 56, 32]
  
  var body: some View {
    VStack {
      List(scores, id: \.self) { score in
        Text("Score \(score)")
          .updateInt(score)
      }
      Text("Total: \(total)")
    }
    .onPreferenceChange(UpdateInt.self) { newValue in
      total = newValue
    }
  }
}

struct PreferenceKey3View_Previews: PreviewProvider {
  static var previews: some View {
    PreferenceKey3View()
  }
}
