//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, ZSTRGL. All rights reserved.
//

import Foundation
import UIKit

/// 描画対象を表すクラス
protocol Drawable {
  /// 描画する
  func draw(x: CGFloat, y: CGFloat)
}
