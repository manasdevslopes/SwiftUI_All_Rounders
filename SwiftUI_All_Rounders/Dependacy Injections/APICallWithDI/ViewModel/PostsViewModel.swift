//
//  PostsViewModel.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import Foundation

class PostsViewModel: ObservableObject {
  @Published var posts: [Post] = []
  @Published var errorMessage: String?
  private var dataService: DataServiceProtocol
  
  init(dataService: DataServiceProtocol) {
    self.dataService = dataService
    Task.detached {
      await self.fetchPosts()
    }
  }
  
  @MainActor
  func fetchPosts() {
    Task {
      do {
        let url = API.postsURL
        self.posts = try await dataService.fetchData(url: url)
      } catch let error as NetworkError {
        self.errorMessage = error.errorDescription
      } catch {
        self.errorMessage = error.localizedDescription
      }
    }
  }
}
