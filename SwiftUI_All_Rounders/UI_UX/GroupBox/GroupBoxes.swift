//
//  GroupBoxes.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 05/07/24.
//

import SwiftUI

struct GroupBoxes: View {
    var body: some View {
      ZStack {
        Rectangle()
          .foregroundStyle(.pink.gradient.opacity(0.8))
          .ignoresSafeArea()
        
        VStack(spacing: 40) {
          GroupBox("My Content") {
            Text("This is my groupbox. Isn't it cool. It's like a card view. Awesome!")
          }
          .frame(width: 240)
          .groupBoxStyle(.music)
          
          GroupBox {
            GroupBox {
              MusicPlayerView()
            }
            .groupBoxStyle(.music)
          } label: {
            Label("Now Playing", systemImage: "music.note")
          }
          .groupBoxStyle(.music)
        }
        .padding()
      }
    }
}

struct GroupBoxes_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxes()
    }
}

// Custom Style to GroupBox
struct MusicGroupBoxStyle: GroupBoxStyle {
  func makeBody(configuration: Configuration) -> some View {
    VStack(alignment: .leading) {
      configuration.label
        .bold()
        .foregroundStyle(.pink)
      configuration.content
    }
    .padding()
    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
  }
}

extension GroupBoxStyle where Self == MusicGroupBoxStyle {
  static var music: MusicGroupBoxStyle { .init() }
}

struct MusicPlayerView: View {
  var body: some View {
    VStack {
      HStack {
        RoundedRectangle(cornerRadius: 8).frame(width: 50, height: 50).foregroundStyle(.secondary)
        
        VStack(alignment: .leading, spacing: 2) {
          Text("Cool Song Title").font(.headline.bold())
          
          Text("Artist Name").font(.footnote).foregroundColor(.secondary)
        }
        
        Spacer()
      }
      .padding(.bottom, 8)
      
      ProgressView(value: 0.4, total: 1).tint(.secondary).padding(.bottom, 20)
      
      HStack(spacing: 30) {
        Image(systemName: "backward.fill")
        Image(systemName: "pause.fill")
        Image(systemName: "forward.fill")
      }
      .foregroundStyle(.secondary)
      .font(.title)
    }
  }
}
