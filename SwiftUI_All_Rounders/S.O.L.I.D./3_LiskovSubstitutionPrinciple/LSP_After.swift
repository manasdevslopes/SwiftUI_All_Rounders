//
//  LSP_After.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 08/06/24.
//

import Foundation

fileprivate protocol Polygon {
  func calculateArea() -> Double
}

fileprivate class Rectangle: Polygon {
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

fileprivate class Square: Polygon {
  var side: Double = 0
  
  func set(side: Double) {
    self.side = side
  }
  
  func calculateArea() -> Double {
    return pow(side, 2)
  }
}

fileprivate func printArea(of polygon: Polygon) {
  print(polygon.calculateArea())
}

fileprivate func example() {
  let rectangle = Rectangle()
  rectangle.set(width: 5)
  rectangle.set(height: 4)
  printArea(of: rectangle) // Print 20
  
  let square = Square()
  square.side = 4
  printArea(of: square) // Print 16
}
