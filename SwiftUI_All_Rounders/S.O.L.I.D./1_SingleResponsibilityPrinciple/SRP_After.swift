//
//  SRP_After.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 06/06/24.
//

import Foundation


fileprivate class DataHandler {
  let apiHandler: APIHandler
  let parseHandler: ParseHandler
  let storageHandler: StorageHandler
  
  // Constructor Injection
  init(apiHandler: APIHandler, parseHandler: ParseHandler, storageHandler: StorageHandler) {
    self.apiHandler = apiHandler
    self.parseHandler = parseHandler
    self.storageHandler = storageHandler
  }
  
  func handle() {
    let data = apiHandler.loadData()
    let list = parseHandler.parse(data: data)
    let _ = storageHandler.save(model: list)
  }
}

fileprivate class APIHandler {
  func loadData() -> Data {
    return Data()
  }
}

fileprivate class ParseHandler {
  func parse(data: Data) -> Any {
    return ""
  }
}

fileprivate class StorageHandler {
  func save(model: Any) {
    // save here
  }
}
