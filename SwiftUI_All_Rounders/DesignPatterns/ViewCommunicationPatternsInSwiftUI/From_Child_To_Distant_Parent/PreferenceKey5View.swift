//
//  PreferenceKey5View.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 19/06/24.
//

import SwiftUI

// Model
struct PresentableAlert: Equatable, Identifiable {
  let id = UUID()
  let title: String
  let message: String?
  
  static func == (lhs: PresentableAlert, rhs: PresentableAlert) -> Bool {
    lhs.id == rhs.id
  }
}


// Parent View
struct PreferenceKey5View: View {
  @State private var alert: PresentableAlert?
  
    var body: some View {
      HelloWorldView()
//        .onPreferenceChange(AlertPreferenceKey.self) { newValue in
//          self.alert = newValue
//        }
        .onPreferenceChange(AlertPreferenceKey.self) { self.alert = $0 }
        .alert(item: $alert) { alert in
          Alert(title: Text(alert.title), message: alert.message.map(Text.init))
        }
    }
}

// Parent View Component
struct HelloWorldView: View {
  var body: some View {
    ZStack {
      Color.yellow
      VStack {
        Text("Hello, World!")
        ViewWithAlert()
      }
    }
  }
}

struct PreferenceKey5View_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKey5View()
    }
}

// Child View
struct ViewWithAlert: View {
  @State private var alert: PresentableAlert?
  
  var body: some View {
    Button("Show alert", action: {
      self.alert = PresentableAlert(title: "Title", message: "Message")
    })
    .alertView(alert)
  }
}

// Step 1
struct AlertPreferenceKey: PreferenceKey {
  typealias Value = PresentableAlert?
  
  static var defaultValue: PresentableAlert?
  
  static func reduce(value: inout PresentableAlert?, nextValue: () -> PresentableAlert?) {
    value = nextValue()
  }
}

// Step 2
extension View {
  func alertView(_ alert: PresentableAlert?) -> some View {
    self.preference(key: AlertPreferenceKey.self, value: alert)
  }
}

