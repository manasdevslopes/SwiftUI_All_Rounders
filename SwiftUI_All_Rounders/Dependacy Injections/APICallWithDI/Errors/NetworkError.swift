//
//  NetworkError.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import Foundation

enum NetworkError: Error, LocalizedError {
  case invalidURL
  case noData
  case decodingError
  case serverError(Error)
  
  var errorDescription: String? {
    switch self {
      case .invalidURL:
        return "The URL provided was invalid."
      case .noData:
        return "No data was received from the server."
      case .decodingError:
        return "There was an error decoding the data."
      case .serverError(let error):
        return "Server error: \(error.localizedDescription)"
    }
  }
}
