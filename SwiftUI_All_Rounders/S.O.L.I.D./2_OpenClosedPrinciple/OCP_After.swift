//
//  OCP_After.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 08/06/24.
//

import Foundation

fileprivate protocol PaymentProtocol {
  func makePayment(amount: Double)
}

fileprivate class CashPayment : PaymentProtocol {
  func makePayment(amount: Double) {
    // Perform
  }
}

fileprivate class VisaPayment : PaymentProtocol {
  func makePayment(amount: Double) {
    // Perform
  }
}

fileprivate class MasterCardPayment : PaymentProtocol {
  func makePayment(amount: Double) {
    // Perform
  }
}

fileprivate class PaymentManager {
  func makePayment(amount: Double, paymentType: PaymentProtocol) {
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

