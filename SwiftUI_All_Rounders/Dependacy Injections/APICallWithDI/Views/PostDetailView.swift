//
//  PostDetailView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import SwiftUI

struct PostDetailView: View {
  let post: Post
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(post.title)
        .font(.title)
        .padding(.bottom, 8)
      Text(post.body)
        .font(.body)
      Spacer()
    }
    .padding()
    .navigationTitle("Detail")
  }
}

struct PostDetailView_Previews: PreviewProvider {
  static var previews: some View {
    let samplePost = Post(userId: 1, id: 1, title: "Sample Title", body: "Sample Body")
    PostDetailView(post: samplePost)
  }
}
