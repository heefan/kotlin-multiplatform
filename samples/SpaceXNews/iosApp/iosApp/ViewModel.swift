//
//  ViewModel.swift
//  iosApp
//
//  Created by LI Tian on 28/11/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import Foundation
import shared

class ViewModel: ObservableObject {
    let sdk: SpaceXSDK
    @Published var launches = LoadableLaunches.loading

    init(sdk: SpaceXSDK) {
        self.sdk = sdk
        self.loadLaunches(forceReload: false)
    }

    func loadLaunches(forceReload: Bool) {
        self.launches = .loading
        
        
        sdk.getLaunches(forceReload: forceReload, completionHandler: { launches, error in
            DispatchQueue.main.async {
                if let launches = launches {
                    self.launches = .result(launches)
                } else {
                    self.launches = .error(error?.localizedDescription ?? "error")
                }
                
            }
        })
    }
}
