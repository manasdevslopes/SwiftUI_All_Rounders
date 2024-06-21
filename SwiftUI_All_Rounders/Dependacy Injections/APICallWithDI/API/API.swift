//
//  API.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import Foundation

// List of All API's
struct API {
  static let baseURL = "https://jsonplaceholder.typicode.com"
  
  static var postsURL: URL {
    return URL(string: "\(baseURL)/posts")!
  }
  
  // Add other API endpoints here as needed
}
