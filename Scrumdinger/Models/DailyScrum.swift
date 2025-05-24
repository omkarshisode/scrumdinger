//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 16/05/25.
//
import Foundation
import ThemeKit

struct DailyScrum: Identifiable{
    let id: UUID = UUID()
    var title: String
    var attendences: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    var lengthInMinutesAsDouble: Double {
        get { Double(lengthInMinutes) }
        set { lengthInMinutes = Int(newValue) }
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID = UUID()
        let name: String
    }
}

// PreviewContent 
extension DailyScrum {
    static let attendeeNames = ["Omkar", "Shrikant", "Prachi"]
    static let attendees = attendeeNames.map { Attendee(name: $0) }
    
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "iOS Dev",
                   attendences: attendees,
                   lengthInMinutes: 60,
                   theme: .bubblegum),
        DailyScrum(title: "Android Dev",
                   attendences: attendees,
                   lengthInMinutes: 60,
                   theme: .magenta),
        DailyScrum(title: "Web Dev",
                   attendences: attendees,
                   lengthInMinutes: 60,
                   theme: .indigo)
    ]
}

extension DailyScrum {
    static let emptyScrum = DailyScrum(title: "", attendences: [], lengthInMinutes: 5, theme: .sky)
}
