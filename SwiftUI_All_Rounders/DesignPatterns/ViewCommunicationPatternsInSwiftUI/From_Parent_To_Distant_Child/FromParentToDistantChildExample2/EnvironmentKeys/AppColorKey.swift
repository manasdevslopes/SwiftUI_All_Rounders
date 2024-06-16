//
//  AppColorKey.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

// 1st Step
struct AppColorKey: EnvironmentKey {
  typealias Value = Color
  
  static var defaultValue: Color = .red
}

// 2nd Step
extension EnvironmentValues {
  var appColor: Color {
    get {
      self[AppColorKey.self]
    }
    set {
      self[AppColorKey.self] = newValue
    }
  }
}

// 3rd Step - Optional
extension View {
  func appColor(_ color: Color) -> some View {
    environment(\.appColor, color)
  }
}
