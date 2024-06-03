//
//  WebViewInSwiftUI.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 01/06/24.
//

import SwiftUI

struct WebViewInSwiftUI: View {
    var body: some View {
      WebView(url: URL(string: "https://codewithchris.com"))//.ignoresSafeArea()
    }
}

struct WebViewInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        WebViewInSwiftUI()
    }
}
