import UIKit

@dynamicMemberLookup
public protocol UIBuildItem<Node> {
  associatedtype Node: UINode
  
  var node: Node { get }
  
  subscript<Value>(
    dynamicMember keyPath: ReferenceWritableKeyPath<Node, Value>
  ) -> (Value) -> Self { get }
}
