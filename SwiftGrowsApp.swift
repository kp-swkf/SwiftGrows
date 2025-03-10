import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth
import SwiftfulRouting

@main
struct SwiftGrowsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            RouterView { router in
                LoginPageView()
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        if let app = FirebaseApp.app() {
            print("✅ Firebase initialized: \(app.name)")
        } else {
            print("❌ Firebase failed to initialize")
        }
        return true
    }
}
