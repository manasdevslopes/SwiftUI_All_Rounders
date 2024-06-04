//
//  ShareSheetExample.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 04/06/24.
//

import SwiftUI

/// ShareLink
/// A view that controls a sharing presentation.
/// https://developer.apple.com/documentation/SwiftUI/ShareLink
struct ShareSheetExample: View {
  let link = URL(string: "https://codewithchris.com/")!
  
  var body: some View {
    VStack(spacing: 12) {
      ShareLink(item: link)
      
      ShareLink("Labeled Share Link", item: link)
      
      ShareLink(item: link) {
        Label("Share Link with Label builder", systemImage: "swift")
      }
      
      ShareLink(
        item: link,
        message: Text("Additional message content when sharing")
      )
      
      ShareLink(
        item: link,
        preview: SharePreview(
          "Share Link with Preview",
          image: Image(systemName: "swift")
        )
      ) {
        Label("Share Link with Preview", systemImage: "swift")
      }
    }
  }
}

struct ShareSheetExample_Previews: PreviewProvider {
  static var previews: some View {
    ShareSheetExample()
  }
}
