//
//  MockDataService.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import Foundation

class MockDataService: DataServiceProtocol {
  
  private var mockPosts: [Post]
  
  init(mockData: [Post]?) {
    self.mockPosts = mockData ?? [
      Post(userId: 1, id: 1, title: "Mock Title 1", body: "Mock Body 1"),
      Post(userId: 2, id: 2, title: "Mock Title 2", body: "Mock Body 2"),
      Post(userId: 3, id: 3, title: "Mock Title 3", body: "Mock Body 3")
    ]
  }
  
  func fetchData<T: Codable>(url: URL) async throws -> T {
    let data = try JSONEncoder().encode(mockPosts)
    let decodedData = try JSONDecoder().decode(T.self, from: data)
    return decodedData
  }
  
  func postData<T: Codable, U: Codable>(url: URL, body: U) async throws -> T {
    let mockResponse = Post(userId: 1, id: 101, title: "Mock Response Title", body: "Mock Response Body")
    let data = try JSONEncoder().encode(mockResponse)
    let decodedData = try JSONDecoder().decode(T.self, from: data)
    return decodedData
  }
}
