//
//  ScrumdingerTests.swift
//  ScrumdingerTests
//
//  Created by Omkar Shisode on 19/02/26.
//

import Testing
@testable import Scrumdinger

struct ScrumdingerTests {

    @Test func example() async throws {
        #expect(2 + 2 == 4)
    }
    
    @Test func sampleDataContains() async throws {
        let data = DailyScrum.sampleData.first?.attendees ?? []
        #expect(data.count > 1)
    }
}
