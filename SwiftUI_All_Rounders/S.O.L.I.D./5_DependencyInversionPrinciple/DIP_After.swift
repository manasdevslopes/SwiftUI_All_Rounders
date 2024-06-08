//
//  DIP_After.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 08/06/24.
//

import Foundation

// Abstraction
fileprivate protocol Workable {
  func work()
}

fileprivate struct Employees: Workable {
  func work() {
    print("Working...")
  }
}

fileprivate struct Employer {
  var workables: [Workable]
  
  func manage() {
    workables.forEach { workable in
      workable.work()
    }
  }
}

fileprivate func example() {
  let employer = Employer(workables: [Employees()])
  employer.manage()
}
