//
//  ShareCopyWAnimation.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 06/07/24.
//

import SwiftUI

struct ShareCopyWAnimation: View {
  @State private var show: Bool = false
  @State private var lineWidth: CGFloat = 4
  
    var body: some View {
      ZStack {
        // Circle().frame(width: 250, height: 250).opacity(0.1)
        VStack {
          HStack {
            Image("user1").resizable().scaledToFill()
              .frame(width: 60, height: 60)
              .overlay {
                Circle().stroke(lineWidth: lineWidth)
              }
              .offset(x: show ? 115 : 300, y: show ? -10 : -100)
            Image("user2").resizable().scaledToFill()
              .frame(width: 60, height: 60)
              .overlay {
                Circle().stroke(lineWidth: lineWidth)
              }
              .offset(x: show ? -115 : -300, y: show ? -10 : -100)
          }
          HStack {
            Image("user3").resizable().scaledToFill()
              .frame(width: 60, height: 60)
              .overlay {
                Circle().stroke(lineWidth: lineWidth)
              }
              .offset(x: show ? 115 : 300, y: show ? 10 : 100)
            Image("user4").resizable().scaledToFill()
              .frame(width: 60, height: 60)
              .overlay {
                Circle().stroke(lineWidth: lineWidth)
              }
              .offset(x: show ? -115 : -300, y: show ? 10 : 100)
          }
        }
        VStack {
          Image("user5").resizable().scaledToFill()
            .frame(width: 60, height: 60)
            .overlay {
              Circle().stroke(lineWidth: lineWidth)
            }
            .offset(y: show ? -60 : -300)
          Image("user6").resizable().scaledToFill()
            .frame(width: 60, height: 60)
            .overlay {
              Circle().stroke(lineWidth: lineWidth)
            }
            .offset(y: show ? 60 : 300)
        }
        Image("user7").resizable().scaledToFill()
          .frame(width: 60, height: 60)
          .overlay {
            Circle().stroke(lineWidth: lineWidth)
          }
      }
      .rotationEffect(.degrees(show ? 0 : 100))
      .onAppear {
        withAnimation(.spring(response: 0.8, dampingFraction: 0.6)) {
          show.toggle()
        }
      }
      .padding()
    }
}

struct ShareCopyWAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ShareCopyWAnimation()
    }
}
