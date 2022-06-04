import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AlzaSyDa9J239Hh2u6NztzpWaE2ptKjKxRggRfo")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
