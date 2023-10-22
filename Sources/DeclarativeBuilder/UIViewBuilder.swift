import UIKit

@resultBuilder
public struct UIViewBuilder {
  public static func buildBlock(
    _ items: any UIBuildItem...
  ) -> [UINode] {
    items.map { $0.node }
  }
}
