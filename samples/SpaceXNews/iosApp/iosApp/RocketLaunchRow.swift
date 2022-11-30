//
//  RocketLaunchRow.swift
//  iosApp
//
//  Created by LI Tian on 28/11/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared

struct RocketLaunchRow: View {
    var rocketLaunch: RocketLaunch
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10.0) {
                Text("hello world")
                Text("Launch name: \(rocketLaunch.missionName)")
                Text(launchText).foregroundColor(launchColor)
                Text("Launch year: \(String(rocketLaunch.launchYear))")
                Text("Launch details: \(rocketLaunch.details ?? "")")
            }
            Spacer()
        }
    }
}


extension RocketLaunchRow {
    private var launchText: String {
        if let isSuccess = rocketLaunch.launchSuccess {
            return isSuccess.boolValue ? "Successful" : "Unsuccessful"
        } else {
            return "No data"
        }
    }

    private var launchColor: Color {
        if let isSuccess = rocketLaunch.launchSuccess {
            return isSuccess.boolValue ? Color.green : Color.red
        } else {
            return Color.gray
        }
    }
}


struct RocketLaunchRow_Previews: PreviewProvider {
    static var previews: some View {
        let links = Links(patch: nil, article: "article")
        
        let rocketLaunch = RocketLaunch(flightNumber: 1,
                                        missionName: "Mars",
                                        launchDateUTC: "UTC+8",
                                        details: "Details",
                                        launchSuccess: true,
                                        links: links)
    }
}
