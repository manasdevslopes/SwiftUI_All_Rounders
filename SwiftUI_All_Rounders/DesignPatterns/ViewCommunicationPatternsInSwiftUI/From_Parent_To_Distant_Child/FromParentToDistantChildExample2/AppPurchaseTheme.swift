//
//  AppPurchaseTheme.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

struct AppPurchaseTheme {
  var name: String
  var primary: Color
  var secondary: Color
  
  static func theme(for receipt: Receipt) -> AppPurchaseTheme {
    switch receipt {
      case .free:
        return AppPurchaseTheme(name: "Free Version", primary: .red, secondary: .orange)
      case .premium:
        return AppPurchaseTheme(name: "Premium Version", primary: .blue, secondary: .green)
      case .premiumPlus:
        return AppPurchaseTheme(name: "Premium Plus Version", primary: .purple, secondary: .indigo)
    }
  }
}

