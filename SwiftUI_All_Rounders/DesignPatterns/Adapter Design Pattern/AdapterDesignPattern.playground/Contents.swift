import UIKit


protocol ReturnRequest {
  func request() -> String
}

class Network: ReturnRequest {
  func request() -> String {
    return "Network request"
  }
}

class Database {
  func fetch() -> String {
    return "Database Request"
  }
}

extension Database: ReturnRequest {
  func request() -> String {
    return fetch()
  }
}

// So, the Adapter Pattern - allows the interface of an existing class to be used as another interface.
