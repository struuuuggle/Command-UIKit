//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, ZSTRGL. All rights reserved.
//

import Foundation

/// 命令を表現する
protocol Command {

  /// 何かを実行する
  ///
  /// 何を実行するかはComamndプロトコルに適合するクラスが定める
  func execute()
}
