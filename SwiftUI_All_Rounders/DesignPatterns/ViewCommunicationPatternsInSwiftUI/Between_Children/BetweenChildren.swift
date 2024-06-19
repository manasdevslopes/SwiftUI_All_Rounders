//
//  BetweenChildren.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI
// Between Children – Lift the State Up
/*
 To pass data between siblings, we need to lift the state one level up and use their parent view as a middleman.
 
 As an example, we will consider a Toggle and Button with a synchronized state:
 */

struct BetweenChildren: View {
  // 1.
//  @State var isOn = false
  @AppStorage("isOn") private var isOn = false
  
  var body: some View {
    VStack {
      // 2.
      Toggle(isOn: $isOn) { EmptyView() }
        .labelsHidden()
      
      // 3.
      Button(action: { self.isOn.toggle() }) {
        self.isOn ? Text("Turn Off") : Text("Turn On")
      }
    }
    .preferredColorScheme(isOn ? .dark : .light)
  }
}

struct BetweenChildren_Previews: PreviewProvider {
  static var previews: some View {
    BetweenChildren()
  }
}
