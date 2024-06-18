//
//  TextInputField.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 18/06/24.
//

import SwiftUI

struct TextInputField: View {
  private var title: String
  @Binding private var text: String
  @Environment(\.clearButtonHidden) var clearButtonHidden
  
  init(_ title: String, text: Binding<String>) {
    self.title = title
    self._text = text
  }
  
  var clearButton: some View {
    HStack {
      if !clearButtonHidden {
        Spacer()
        Button(action: {text = ""}) {
          Image(systemName: "multiply.circle.fill").foregroundColor(Color(.systemGray))
        }
        .disabled(text.isEmpty)
      }
    }
  }
  
  var clearButtonPadding: CGFloat {
    !clearButtonHidden ? 25 : 0
  }
  
  var body: some View {
    ZStack(alignment: .leading) {
      Text(title)
        .foregroundColor(text.isEmpty ? Color(.placeholderText) : .accentColor)
        .offset(y: text.isEmpty ? 0 : -25)
        .scaleEffect(text.isEmpty ? 1 : 0.8, anchor: .leading)
      TextField("", text: $text)
        .padding(.trailing, clearButtonPadding)
        .overlay {
          clearButton
        }
    }
    .padding(.top, 15)
    .animation(.default, value: text)
  }
}

struct TextInputField_Previews: PreviewProvider {
    static var previews: some View {
      TextInputField("First Name", text: .constant("Manas"))
    }
}

extension View {
  func clearButtonHidden(_ hidesClearButton: Bool = true) -> some View {
    environment(\.clearButtonHidden, hidesClearButton)
  }
}


// Custom Environment
// 1st Step
private struct clearButtonHiddenKey: EnvironmentKey {
  typealias Value = Bool
  
  static var defaultValue: Bool = false
}

// 2nd Step
extension EnvironmentValues {
  var clearButtonHidden: Bool {
    get {
      self[clearButtonHiddenKey.self]
    }
    set {
      self[clearButtonHiddenKey.self] = newValue
    }
  }
}
