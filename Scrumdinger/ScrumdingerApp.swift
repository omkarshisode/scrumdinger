//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 16/05/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup("Daily Scrum") {
            ScrumView(scrums: $scrums)
        }
        
        WindowGroup("Card View"){
            CardView(scrum: DailyScrum.sampleData.first!)
        }
    }
}
