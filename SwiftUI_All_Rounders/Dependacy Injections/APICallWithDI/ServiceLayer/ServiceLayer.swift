//
//  ServiceLayer.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import Foundation

protocol DataServiceProtocol {
  func fetchData<T: Codable>(url: URL) async throws -> T
  func postData<T: Codable, U: Codable>(url: URL, body: U) async throws -> T
}

// NetworkService
class NetworkService: DataServiceProtocol {
  func fetchData<T: Codable>(url: URL) async throws -> T {
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
      throw NetworkError.serverError(NSError(domain: "Invalid Response", code: -1, userInfo: nil))
    }
    
    do {
      let decodedData = try JSONDecoder().decode(T.self, from: data)
      return decodedData
    } catch {
      throw NetworkError.decodingError
    }
  }
  
  func postData<T: Codable, U: Codable>(url: URL, body: U) async throws -> T {
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    do {
      let jsonData = try JSONEncoder().encode(body)
      request.httpBody = jsonData
    } catch {
      throw NetworkError.decodingError
    }
    
    let (data, response) = try await URLSession.shared.data(for: request)
    
    guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
      throw NetworkError.serverError(NSError(domain: "Invalid Response", code: -1, userInfo: nil))
    }
    
    do {
      let decodedData = try JSONDecoder().decode(T.self, from: data)
      return decodedData
    } catch {
      throw NetworkError.decodingError
    }
  }
}
