//
//  AppEntry.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import  SwiftUI

// @main
struct AppEntry: App {
  @StateObject var appStoreService = AppStoreService()
  
  var body: some Scene {
    WindowGroup {
      Group {
        if appStoreService.makePurchase {
          PurchaseView()
        } else {
          FirstView()
          // Inject Green Color in AppColorKey
          // .environment(\.appColor, .green)
          // .appColor(.green)
        }
      }
      .environmentObject(appStoreService)
      .appTheme(AppPurchaseTheme.theme(for: appStoreService.receipt))
    }
  }
}
