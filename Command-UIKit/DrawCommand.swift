//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, ZSTRGL. All rights reserved.
//

import Foundation
import UIKit

/// 「点の描画命令」を表現する
final class DrawCommand: Command {
  /// 描画対象
  var drawable: Drawable
  /// 描画位置
  var position: CGPoint

  init(drawable: Drawable, position: CGPoint) {
    self.drawable = drawable
    self.position = position
  }

  /// 実行
  func execute() {
  }
}
