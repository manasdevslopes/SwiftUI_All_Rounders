//
//  AppThemeKey.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

// 1st Step - Default Value
struct AppThemeKey: EnvironmentKey {
  typealias Value = AppPurchaseTheme
  
  static var defaultValue: AppPurchaseTheme = AppPurchaseTheme.theme(for: .free)
}

// 2nd Step
extension EnvironmentValues {
  var appTheme: AppPurchaseTheme {
    get {
      self[AppThemeKey.self]
    }
    set {
      self[AppThemeKey.self] = newValue
    }
  }
}

// 3rd Step - Optional
extension View {
  func appTheme(_ theme: AppPurchaseTheme) -> some View {
    environment(\.appTheme, theme)
  }
}
