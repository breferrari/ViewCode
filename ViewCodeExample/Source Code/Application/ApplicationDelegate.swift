import UIKit

class ApplicationDelegate: UIResponder {
    var window: UIWindow?
    var services: [ApplicationService] { return [] }
}

extension ApplicationDelegate: UIApplicationDelegate {
    func applicationDidFinishLaunching(_ application: UIApplication) {
        services.forEach { $0.applicationDidFinishLaunching?(application) }
    }
}

