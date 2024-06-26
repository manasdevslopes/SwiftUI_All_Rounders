//
//  PurchaseView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//


import SwiftUI

struct PurchaseView: View {
  @EnvironmentObject var appStoreService: AppStoreService
  @Environment(\.appTheme) var appTheme
  
  @State private var purchaseInProgress = false
  
  var body: some View {
    NavigationStack {
      VStack {
        GroupBox {
          Text("Take advantage of the features offered by making an in-app purchase")
          Divider()
          Button(Receipt.premium.rawValue) {
            makePurchase(.premium)
          }
          .disabled(appStoreService.receipt == .premium || appStoreService.receipt == .premiumPlus)
          
          Text("Sit pariatur consequatur ut fugit dignissimos placeat cum optio.")
          Button(Receipt.premiumPlus.rawValue) {
            makePurchase(.premiumPlus)
          }
          .disabled(appStoreService.receipt == .premiumPlus)
          Text("Voluptas rerum sint ad ea enim aut pariatur aut eligendi quasi.")
            .padding()
          HStack {
            if appStoreService.receipt != .free {
              Button("Revoke") {
                makePurchase(nil)
              }
            }
            Button("Dismiss") {
              appStoreService.makePurchase = false
            }
            .tint(.green)
          }
        }
        .buttonStyle(.borderedProminent)
        .disabled(purchaseInProgress)
        .padding()
        .overlay {
          if purchaseInProgress {
            ProgressView()
          }
        }
        Spacer()
          .navigationTitle("Make Purchase")
      }
      .withBackground(color: appTheme.secondary)
    }
    .tint(appTheme.primary)
  }
  
  func makePurchase(_ receipt: Receipt?) {
    purchaseInProgress = true
    if receipt != nil {
      appStoreService.makePurchase(receipt: receipt!)
    } else {
      appStoreService.clearPurchase()
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      appStoreService.makePurchase = false
      purchaseInProgress = false
    }
  }
}

struct PurchaseView_Previews: PreviewProvider {
  static var previews: some View {
    PurchaseView()
      .environmentObject(AppStoreService())
  }
}
