//
//  Post.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 21/06/24.
//

import Foundation

struct Post: Codable, Identifiable {
  let userId: Int
  let id: Int
  let title: String
  let body: String
}
