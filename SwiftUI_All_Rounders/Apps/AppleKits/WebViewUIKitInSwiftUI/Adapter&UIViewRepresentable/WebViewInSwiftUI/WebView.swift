//
//  WebView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 01/06/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
  
  var url: URL?
  
  typealias UIViewType = WKWebView
  
  // Return the UIKit View that you want to use.
  func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
  }
  
  // This one gives opportunity to updte the UIKit component for presentation in your SwiftUI Views
  func updateUIView(_ webView: WKWebView, context: Context) {
    if let url {
      let request = URLRequest(url: url)
      webView.load(request)
    }
  }
}
