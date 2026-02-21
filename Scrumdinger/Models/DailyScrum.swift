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
    var attendees: [Attendee]
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
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .bubblegum),
        DailyScrum(title: "Android Dev",
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .magenta),
        DailyScrum(title: "Web Dev",
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .indigo),
        DailyScrum(title: "AI Dev",
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .periwinkle),
        DailyScrum(title: "BlockChain Dev",
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .oxblood),
        DailyScrum(title: "Data Science",
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .buttercup),
        DailyScrum(title: "SAP",
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .seafoam),
        DailyScrum(title: "AI/ML",
                   attendees: attendees,
                   lengthInMinutes: 60,
                   theme: .teal),
    ]
}

extension DailyScrum {
    static let emptyScrum = DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    
    static func sum(a: Int, b: Int) -> Int {
        return a + b
    }
}
