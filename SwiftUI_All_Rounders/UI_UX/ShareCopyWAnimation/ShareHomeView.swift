//
//  ShareHomeView.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 06/07/24.
//

import SwiftUI

struct ShareHomeView: View {
  @State private var showTheShareView: Bool = false
  
    var body: some View {
      switch showTheShareView {
        case false:
          Button(action: {
            withAnimation {
              showTheShareView.toggle()
            }
          }) {
            HStack {
              Text("Invite")
              Image(systemName: "person.badge.plus").scaleEffect(x: -1, y: 1)
            }
            .font(.title.bold())
            .tint(.primary)
          }
          .frame(maxWidth: .infinity)
          .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
       case true:
          ShareView(showShareView: $showTheShareView)
            .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
      }
    }
}

struct ShareHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ShareHomeView()
    }
}
