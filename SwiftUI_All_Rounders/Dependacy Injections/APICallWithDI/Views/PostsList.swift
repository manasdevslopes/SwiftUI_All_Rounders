//
//  PostsList.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import SwiftUI

struct PostsList: View {
  @StateObject private var postsVM: PostsViewModel
  
  init(dataService: DataServiceProtocol) {
    _postsVM = StateObject(wrappedValue: PostsViewModel(dataService: dataService))
  }
  
    var body: some View {
      NavigationStack {
        VStack {
          if let errorMessage = postsVM.errorMessage {
            Text(errorMessage).foregroundColor(.red).padding()
          }
          List(postsVM.posts) { post in
            NavigationLink(destination: PostDetailView(post: post)) {
              Text(post.title)
            }
          }
        }
        .navigationTitle("Posts")
      }
    }
}

struct PostsList_Previews: PreviewProvider {
    static var previews: some View {
      PostsList(dataService: NetworkService())
    }
}
