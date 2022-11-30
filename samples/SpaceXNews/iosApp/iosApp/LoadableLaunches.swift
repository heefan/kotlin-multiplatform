//
//  File.swift
//  iosApp
//
//  Created by LI Tian on 28/11/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import Foundation
import shared

enum LoadableLaunches {
    case loading
    case result([RocketLaunch])
    case error(String)
}
