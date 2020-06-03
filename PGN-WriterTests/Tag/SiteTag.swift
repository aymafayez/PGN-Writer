//
//  SiteTag.swift
//  PGN-WriterTests
//
//  Created by A.F on 6/3/20.
//  Copyright © 2020 A.F. All rights reserved.
//

import XCTest
@testable import PGN_Writer

class SiteTagTests: XCTestCase {

    var city: String = "St."
    var region: String = "Petersburg"
    var country: String = "RUS"
    var siteTag: SiteTag!
    
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
    
    func testGetTagWithCityRegionCountry() {
        siteTag = SiteTag(city: city, region: region, country: country)
        let desiredTag = "[Site \"St. Petersburg RUS\"]"
        let actualTag = siteTag.getTag()
        XCTAssertEqual(actualTag, desiredTag)
    }
    
    func testGetTagWithoutInput() {
        siteTag = SiteTag()
        let desiredTag = "?"
        let actualTag = siteTag.getTag()
        XCTAssertEqual(actualTag, desiredTag)
    }
    
    func testGetTagWithEmptyInputs() {
        siteTag = SiteTag(city: "", region: "", country: "")
        let desiredTag = "?"
        let actualTag = siteTag.getTag()
        XCTAssertEqual(actualTag, desiredTag)
    }

}
