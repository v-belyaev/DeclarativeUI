# DeclarativeUI

```swift
import UIKit
import DeclarativeUI

final class ViewController: UIViewController {
  // MARK: - Lifecycle
  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Internal
  
  override func loadView() {
    self.view = UIView() {
      UILabel(frame: .zero).ref(&self.label)
        .text("Hello, World!")
        .numberOfLines(1)
        .textColor(.label)
        .textAlignment(.center)
        .translatesAutoresizingMaskIntoConstraints(false)
      
      UIView(frame: .zero).ref(&self.overlayView)
        .backgroundColor(.blue.withAlphaComponent(0.1))
        .translatesAutoresizingMaskIntoConstraints(false)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    NSLayoutConstraint.activate([
      self.overlayView.widthAnchor.constraint(equalToConstant: 200),
      self.overlayView.heightAnchor.constraint(equalToConstant: 200),
      self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
      self.overlayView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      self.overlayView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
    ])
  }
  
  private var label: UILabel!
  private var overlayView: UIView!
}
```