//
//  FromParentToDistantChild.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 15/06/24.
//
// From Parent to Distant Child – Use Environment
//
// Parent View -> ToDoListView -> ToDoItemView -> ToDoItemDetail
//

import SwiftUI

protocol ImageCache {
  subscript(_ key: String) -> UIImage? { get set }
}

struct TemporaryImageCache: ImageCache {
  private let cache = NSCache<NSString, UIImage>()

  subscript(_ key: String) -> UIImage? {
    get { cache.object(forKey: key as NSString) }
    set { newValue == nil ? cache.removeObject(forKey: key as NSString) : cache.setObject(newValue!, forKey: key as NSString) }
  }
}

// Now add an image cache to the environment:
struct ImageCacheKey: EnvironmentKey {
  static let defaultValue: ImageCache = TemporaryImageCache()
}

extension EnvironmentValues {
  var imageCache: ImageCache {
    get { self[ImageCacheKey.self] }
    set { self[ImageCacheKey.self] = newValue }
  }
}

// We can read a value from an environment using the @Environment property wrapper:
struct TodoItemDetail: View {
  let item: TodoItem
  @Environment(\.imageCache) var cache: ImageCache
  
  var body: some View {
    VStack {
      // ...
    }
  }
}
