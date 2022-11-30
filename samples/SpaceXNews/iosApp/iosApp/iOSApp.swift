import SwiftUI
import shared


@main
struct iOSApp: App {
	var body: some Scene {
        let sdk = SpaceXSDK(databaseDriverFactory: DatabaseDriverFactory())
		WindowGroup {
            let viewModel = ViewModel(sdk: sdk)
            ContentView(viewModel: viewModel)
		}
	}
}
