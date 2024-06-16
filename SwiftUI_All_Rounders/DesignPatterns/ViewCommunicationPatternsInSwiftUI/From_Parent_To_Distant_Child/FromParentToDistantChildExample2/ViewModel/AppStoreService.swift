//
//  AppStoreService.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

enum Receipt: String {
  case free, premium, premiumPlus
}

class AppStoreService: ObservableObject {
  let receiptURL = URL.documentsDirectory.appending(path: "receipt.text")
  @Published var receipt: Receipt = .free
  @Published var makePurchase: Bool = false
  
  init() {
    retreivePurchase()
  }
  
  func retreivePurchase() {
    if FileManager().fileExists(atPath: receiptURL.path) {
      do {
        let receiptData = try Data(contentsOf: receiptURL)
        let receiptString = String(decoding: receiptData, as: UTF8.self)
        if let receipt = Receipt(rawValue: receiptString) {
          self.receipt = receipt
        } else {
          clearPurchase()
        }
      } catch {
        print(error.localizedDescription)
        self.receipt = .free
      }
    } else {
      self.receipt = .free
    }
  }
  
  func makePurchase(receipt: Receipt) {
    self.receipt = receipt
    do {
      let data = Data(receipt.rawValue.utf8)
      try data.write(to: receiptURL)
    } catch {
      print(error.localizedDescription)
    }
  }
  
  func clearPurchase() {
    try? FileManager().removeItem(at: receiptURL)
    self.receipt = .free
  }
}
