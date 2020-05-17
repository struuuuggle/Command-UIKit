//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/17.
//  Copyright © 2020, ZSTRGL. All rights reserved.
//

import Foundation
import UIKit

final class DrawView: UIView {
  /// 描画色
  private let color: UIColor = .red
  /// 描画する点の半径
  private let radius: CGFloat = 6
  /// 履歴
  private var history: MacroCommand!

  var path: UIBezierPath!
  var lastDrawImage: UIImage!

  override init(frame: CGRect) {
    super.init(frame: frame)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func draw(_ rect: CGRect) {
    lastDrawImage?.draw(at: CGPoint.zero)
    color.setStroke()
    path?.stroke()
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    let currentPoint = touches.first!.location(in: self)
    path = UIBezierPath()
    path?.lineWidth = radius
    path?.lineCapStyle = .round
    path?.lineJoinStyle = .round
    path?.move(to: currentPoint)
  }

  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    let currentPoint = touches.first!.location(in: self)
    path?.addLine(to: currentPoint)
    setNeedsDisplay()
  }

  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    let currentPoint = touches.first!.location(in: self)
    path.addLine(to: currentPoint)
    lastDrawImage = snapShot()
    setNeedsDisplay()
  }

  func snapShot() -> UIImage {
    UIGraphicsBeginImageContextWithOptions(bounds.size, false, 0.0)
    lastDrawImage?.draw(at: .zero)
    color.setStroke()
    path?.stroke()
    let image = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return image
  }

  func configure(history: MacroCommand) {
    self.history = history
  }

  /// 履歴全体を再描画
  func paint() {
    history.execute()
  }
}

extension DrawView: Drawable {
  /// 描画
  func draw(x: CGFloat, y: CGFloat) {
    
  }
}
