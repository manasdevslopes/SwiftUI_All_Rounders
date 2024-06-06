//
//  SRP_Before.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 06/06/24.
//

import Foundation

fileprivate class DataHandler {
  
  func handle() {
    let data = loadData()
    let list = parse(data: data)
    let _ = save(model: list)
  }
  
  func loadData() -> Data {
    return Data()
  }
  
  func parse(data: Data) -> Any {
    return ""
  }
  
  func save(model: Any) {
    // save here
  }
}
