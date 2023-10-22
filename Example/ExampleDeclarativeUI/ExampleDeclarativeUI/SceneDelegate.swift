import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let windowScene = (scene as? UIWindowScene)
    else { return }
    
    let viewController: ViewController = .init()
    
    let window: UIWindow = .init(windowScene: windowScene)
    window.overrideUserInterfaceStyle = .dark
    window.rootViewController = viewController
    window.makeKeyAndVisible()
    
    self.window = window
  }
}
