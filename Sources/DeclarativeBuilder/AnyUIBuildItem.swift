import UIKit

public struct AnyUIBuildItem<T: UINode>: UIBuildItem {
  public var node: T
  
  public subscript<Value>(
    dynamicMember keyPath: ReferenceWritableKeyPath<T, Value>
  ) -> (Value) -> AnyUIBuildItem<T> {
    return { [weak node] in
      node?[keyPath: keyPath] = $0
      return self
    }
  }
}
