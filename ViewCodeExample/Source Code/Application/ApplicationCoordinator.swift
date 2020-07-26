import UIKit

final class ApplicationCoordinator {
    private var window: UIWindow!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.makeKeyAndVisible()
        window.rootViewController = ExampleViewController.instantiate()
    }
}
