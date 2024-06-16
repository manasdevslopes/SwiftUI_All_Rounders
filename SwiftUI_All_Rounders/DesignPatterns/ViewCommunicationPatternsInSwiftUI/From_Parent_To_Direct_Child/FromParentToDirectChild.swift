//
//  FromParentToDirectChild.swift
//  SwiftUI_All_Rounders
//
//  Created by MANAS VIJAYWARGIYA on 15/06/24.
//
// From Parent to Direct Child – Use Initializer
//
// ParentView -> ToDoListView -> ToDoItemView

import SwiftUI

// Model

struct TodoItem: Identifiable {
  var id = UUID()
  let title: String
}

// Parent View
struct ParentView: View {
  let items = [
    TodoItem(title: "Item #1"),
    TodoItem(title: "Item #2"),
    TodoItem(title: "Item #3")
  ]
  
  var body: some View {
    TodoListView(items: items)
  }
}

// Child View
struct TodoListView: View {
  let items: [TodoItem]
  
  var body: some View {
    List(items) { item in
      TodoItemView(item: item)
    }
  }
}

// Sub-Child View
struct TodoItemView: View {
  let item: TodoItem
  
  var body: some View {
    Text(item.title)
  }
}
