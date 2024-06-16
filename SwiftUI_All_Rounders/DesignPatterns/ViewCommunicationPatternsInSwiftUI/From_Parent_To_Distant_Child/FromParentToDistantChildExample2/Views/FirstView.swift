//
//  FirstView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 16/06/24.
//

import SwiftUI

struct FirstView: View {
  @EnvironmentObject var appStoreService: AppStoreService
  @Environment(\.appColor) var appColor
  @Environment(\.appTheme) var appTheme
  
  var body: some View {
    NavigationStack {
      VStack {
        Text("Welcome")
          .font(.title)
        Text("Your Current Level is \(appTheme.name)")
        NavigationLink("Go Next View", value: true)
          .buttonStyle(.borderedProminent)
        Spacer()
      }
      .withBackground(color: appTheme.secondary)
      .navigationDestination(for: Bool.self, destination: { _ in
        SecondView()
      })
      .navigationTitle("Environment Values")
      .toolbar {
        ToolbarItem {
          Button {
            appStoreService.makePurchase = true
          } label: {
            Image(systemName: "gearshape")
          }
        }
      }
    }
    .tint(appTheme.primary)
  }
}

struct FirstView_Previews: PreviewProvider {
  static var previews: some View {
    FirstView()
      .environmentObject(AppStoreService())
  }
}
