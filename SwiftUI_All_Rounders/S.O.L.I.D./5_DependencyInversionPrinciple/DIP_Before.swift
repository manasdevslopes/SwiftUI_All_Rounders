//
//  DIP_Before.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 08/06/24.
//

import Foundation

fileprivate struct Employees {
  func work() {
    print("Working...")
  }
}

fileprivate struct Employer {
  var employees: [Employees]
  
  func manage() {
    employees.forEach { employee in
      employee.work()
    }
  }
}

fileprivate func example() {
  let employer = Employer(employees: [Employees()])
  employer.manage()
}
