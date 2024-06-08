//
//  OCP_Before.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 08/06/24.
//

import Foundation

fileprivate class CashPayment {
  func makePayment(amount: Double) {
    // Perform
  }
}

fileprivate class VisaPayment {
  func makePayment(amount: Double) {
    // Perform
  }
}

fileprivate class MasterCardPayment {
  func makePayment(amount: Double) {
    // Perform
  }
}

// MARK: - This function is bad as this is open for modification
fileprivate class PaymentManager {
  func makePayment(amount: Double, paymentType: CashPayment) {
    paymentType.makePayment(amount: amount)
  }
  
  func makePayment(amount: Double, paymentType: VisaPayment) {
    paymentType.makePayment(amount: amount)
  }
  
  func makePayment(amount: Double, paymentType: MasterCardPayment) {
    paymentType.makePayment(amount: amount)
  }
}

// Main function to execute the code
fileprivate func main() {
  let payment = PaymentManager()
  let cash = CashPayment()
  let visa = VisaPayment()
  let masterCard = MasterCardPayment()
  
  print("CASH---->", payment.makePayment(amount: 40.00, paymentType: cash))
  print("VISA---->", payment.makePayment(amount: 40.00, paymentType: visa))
  print("MASTER---->", payment.makePayment(amount: 40.00, paymentType: masterCard))
}

