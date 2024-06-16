//
//  CustomEnvironmentKeysApp.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

// @main
struct CustomEnvironmentKeysApp: App {
  @Environment(\.safeArea) var safeArea
  
  var body: some Scene {
    WindowGroup {
      GeometryReader {
        let safeArea = $0.safeAreaInsets
        CustomEnvironmentKeysView()
          .padding(safeArea)
          .environment(\.safeArea, safeArea)
          .ignoresSafeArea(.container,edges: .all)
      }
    }
  }
}
