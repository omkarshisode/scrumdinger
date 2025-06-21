//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 16/05/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scurms = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumView(scurms: $scurms)
        }
    }
}
