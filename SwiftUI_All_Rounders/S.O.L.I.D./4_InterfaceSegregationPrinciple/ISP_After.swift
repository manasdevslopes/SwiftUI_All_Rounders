//
//  ISP_After.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 08/06/24.
//

import Foundation

fileprivate protocol Humans {
  func goToWork()
  func buyAHouse()
  func eat()
  func sleep()
}


fileprivate protocol Animal {
  func eat()
  func sleep()
}

fileprivate class Persons: Humans {
  // All are valid
  func goToWork() { }
  
  func buyAHouse() { }
  
  func eat() { }
  
  func sleep() { }
}

fileprivate class Animals: Animal {
  // These 2 are valid
  func eat() { }
  func sleep() { }
}

fileprivate func example() {
  let person = Persons()
  person.goToWork()
  person.eat()
  person.sleep()
  person.buyAHouse()
  
  let lion = Animals()
  lion.eat()
  lion.sleep()
}
