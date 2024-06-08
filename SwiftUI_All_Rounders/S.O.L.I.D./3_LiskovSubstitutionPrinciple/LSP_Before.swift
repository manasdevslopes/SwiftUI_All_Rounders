//
//  LSP_Before.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 08/06/24.
//

import Foundation

fileprivate class Rectangle {
  var width: Double = 0
  var height: Double = 0
  
  func set(width: Double) {
    self.width = width
  }
  
  func set(height: Double) {
    self.height = height
  }
  
  func calculateArea() -> Double {
    return width * height
  }
}

fileprivate class Square: Rectangle {
  override func set(width: Double) {
    self.width = width
    self.height = width
  }
  
  override func set(height: Double) {
    self.height = height
    self.width = width
  }
}

fileprivate func setSizeAndPrintArea(of rectangle: Rectangle) {
  rectangle.set(height: 5)
  rectangle.set(width: 4)
  print(rectangle.calculateArea())
}

fileprivate func example() {
  let rectangle = Rectangle()
  setSizeAndPrintArea(of: rectangle) // prints 20
  
  let square = Square()
  setSizeAndPrintArea(of: square) // prints 16
}
