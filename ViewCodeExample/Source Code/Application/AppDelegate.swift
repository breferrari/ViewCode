import UIKit

@UIApplicationMain
final class AppDelegate: ApplicationDelegate {
    override var services: [ApplicationService] {
        return []
    }
    
    private var coordinator: ApplicationCoordinator!
    
    override func applicationDidFinishLaunching(_ application: UIApplication) {
        super.applicationDidFinishLaunching(application)
        startCoordinator()
    }
}

private extension AppDelegate {
    func startCoordinator() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window = self.window else { fatalError("Couldn't initialize UIWindow") }
        
        coordinator = ApplicationCoordinator(window: window)
        coordinator.start()
    }
}
