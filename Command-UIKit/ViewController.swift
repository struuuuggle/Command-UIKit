//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, ZSTRGL. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
  /// 描画履歴
  private var history = MacroCommand()
  /// 描画領域
  @IBOutlet private weak var drawView: DrawView!
  /// 消去ボタン
  @IBOutlet private weak var clearButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

    drawView.configure(history: history)
  }

  @IBAction func clear(_ sender: UIButton) {
    debugPrint("Tap Clear")
    history.clear()
    drawView.path = UIBezierPath()
    drawView.lastDrawImage = UIImage()
    drawView.setNeedsDisplay()
  }
}

