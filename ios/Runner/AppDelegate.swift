import UIKit
import Flutter
import GoogleMaps //added

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyCdc5e0uj1VvbJB4QeHbjiahcT3Sjm5cTQ")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
