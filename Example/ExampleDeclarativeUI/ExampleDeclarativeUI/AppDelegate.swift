import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
  
  // MARK: - UIApplicationDelegate
  
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return true
  }
  
  // MARK: - UISceneSession Lifecycle
  
  func application(
    _ application: UIApplication,
    configurationForConnecting connectingSceneSession: UISceneSession,
    options: UIScene.ConnectionOptions
  ) -> UISceneConfiguration {
    guard connectingSceneSession.role == UISceneSession.Role.windowApplication
    else { fatalError("Unhandled scene role \(connectingSceneSession.role)") }
    
    let config: UISceneConfiguration = .init(
      name: nil,
      sessionRole: connectingSceneSession.role
    )
    config.delegateClass = SceneDelegate.self
    return config
  }
}
