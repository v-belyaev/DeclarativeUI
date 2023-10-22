import UIKit

public protocol UINode: UIView {}

extension UINode {
  public func ref(_ value: inout Self?) -> AnyUIBuildItem<Self> {
    value = self
    return AnyUIBuildItem(node: self)
  }
  
  public func build() -> AnyUIBuildItem<Self> {
    AnyUIBuildItem(node: self)
  }
}

extension UIView: UINode {}
