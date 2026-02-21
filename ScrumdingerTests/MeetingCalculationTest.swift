//
//  MeetingCalculationTest.swift
//  ScrumdingerTests
//
//  Created by Omkar Shisode on 19/02/26.
//

import XCTest
@testable import Scrumdinger

// Old way to do the testing the new way is use the
final class MeetingCalculationTest: XCTest {
    func testAddTwoNumber() {
        let sum = DailyScrum.sum(a: 1, b: 1)
        XCTAssertEqual(sum, 2)
    }
}
