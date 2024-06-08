//
//  ISP_Before.swift
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

fileprivate class Persons: Humans {
  // All are valid
  func goToWork() { }
  
  func buyAHouse() { }
  
  func eat() { }
  
  func sleep() { }
}

fileprivate class Animal: Humans {
  // These 2 are not valid, these func still exposed to Animal class
  func goToWork() { }
  func buyAHouse() { }
  
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
  
  let lion = Animal()
  lion.eat()
  lion.sleep()
  lion.goToWork() // wrong
  lion.buyAHouse() // wrong
}
