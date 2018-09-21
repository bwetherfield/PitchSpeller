//
//  CrossTests.swift
//  SpelledPitchTests
//
//  Created by James Bean on 9/21/18.
//

import XCTest
@testable import SpelledPitch

class CrossTests: XCTestCase {

    func testEqualityFunction() {
        let pair1 = Cross<Int, String>(3, "three")
        let pair2 = Cross<Int, String>(3, "three")
        let pair3 = Cross<Int, String>(3, "four")
        XCTAssertEqual(pair1, pair2)
        XCTAssertNotEqual(pair1, pair3)
    }

    func testHashability() {
        let pair = Cross<Int, String>(2, "two")
        let dict = [pair: "Hash Value"]
        XCTAssertEqual(dict[pair], "Hash Value")
    }
}
