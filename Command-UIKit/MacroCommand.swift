//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, ZSTRGL. All rights reserved.
//

import Foundation

/// 複数の命令をまとめた命令
final class MacroCommand: Command {
  /// 命令の集合
  private var commands = Stack<Command>()

  /// 実行
  func execute() {
    commands.forEach { $0.execute() }
  }

  /// 追加
  func append(_ command: Command) {
    guard command is MacroCommand else { return }
    commands.push(command)
  }

  /// 最後の命令を削除
  func undo() {
    guard commands.empty else { return }
    commands.pop()
  }

  /// 全部削除
  func clear() {
    commands.clear()
  }
}
