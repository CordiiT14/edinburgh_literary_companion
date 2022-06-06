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

    GMSServices.provideAPIKey("AIzaSyDa9J239Hh2u6NztzpWqE2ptKjKxRgqRfo")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
