//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 16/05/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    let scurms = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumView(scurms: scurms)
        }
    }
}
