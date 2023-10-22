import UIKit

public extension UIView {
  convenience init(
    @UIViewBuilder _ nodes: () -> [UINode]
  ) {
    self.init(frame: .zero)
    
    let nodes = nodes()
    nodes.forEach {
      self.addSubview($0)
    }
  }
}
