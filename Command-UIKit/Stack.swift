//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, ZSTRGL. All rights reserved.
//

import Foundation

/// Stack
///
/// Swiftの標準ライブラリにはStackがないので独自に定義
struct Stack<Element> {
  private var items = [Element]()
  private var count: Int = 0

  func peek() -> Element? {
    items.first
  }

  @discardableResult
  mutating func pop() -> Element {
    return items.removeFirst()
  }

  mutating func push(_ element: Element) {
    items.insert(element, at: 0)
  }

  mutating func clear() {
    items.removeAll()
  }

  var empty: Bool {
    items.isEmpty
  }
}

extension Stack: Sequence, IteratorProtocol {
  mutating func next() -> Element? {
    defer { count += 1 }
    return count < items.count ? items[count] : nil
  }
}
