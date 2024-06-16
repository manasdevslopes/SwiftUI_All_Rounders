//
//  SafeAreaKey.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

// 1st Step
struct SafeAreaKey: EnvironmentKey {
  typealias Value = EdgeInsets
  static var defaultValue: EdgeInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
}

// 2nd Step
extension EnvironmentValues {
  var safeArea: EdgeInsets {
    get {
      self[SafeAreaKey.self]
    }
    set {
      self[SafeAreaKey.self] = newValue
    }
  }
}
