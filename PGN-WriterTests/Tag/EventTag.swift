//
//  EventTag.swift
//  PGN-WriterTests
//
//  Created by A.F on 6/3/20.
//  Copyright © 2020 A.F. All rights reserved.
//

import XCTest
@testable import PGN_Writer

class EventTagTests: XCTestCase {
    
    var eventName: String?
    var eventTag: EventTag?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGetTagWithValue() {
        eventName = "FIDE World Championship"
        eventTag = EventTag(eventName: eventName)
        let desiredTag = "[Event \"FIDE World Championship\"]"
        let actualTag = eventTag!.getTag()
        XCTAssertEqual(actualTag, desiredTag)
    }
    
    func testGetTagWithNil() {
        eventName = nil
        eventTag = EventTag(eventName: eventName)
        let desiredTag = "?"
        let actualTag = eventTag!.getTag()
        XCTAssertEqual(actualTag, desiredTag)
    }
    
    func testGetTagWithEmptyString() {
        eventName = ""
        eventTag = EventTag(eventName: eventName)
        let desiredTag = "?"
        let actualTag = eventTag!.getTag()
        XCTAssertEqual(actualTag, desiredTag)
    }

}
