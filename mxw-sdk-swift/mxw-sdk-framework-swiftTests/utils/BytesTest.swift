//
//  BytesTest.swift
//  mxw-sdk-framework-swiftTests
//
//  Created by William Loke on 09/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import XCTest
@testable import mxw_sdk_framework_swift

class BytesTest: XCTestCase {
    
    func testForTrimLeadingBytes() {
        let dataOne: [Character] = ["a","b","c","d","e"]
        let bytes: [UInt8] = Array(String(dataOne).utf8)
        let byte = UInt8(97)
        let expectedResults: [UInt8] = [98, 99, 100, 101]
        
        let testResults = Bytes().trimLeadingBytes(bytes: bytes, byte: byte)
        XCTAssertEqual(testResults, expectedResults, "The Result is not as expected")
    }
    
    func testForTrimLeadingZeroes() {
        let dataOne: [Character] = ["a","b","c","d","e"]
        let bytes: [UInt8] = Array(String(dataOne).utf8)
        let expectedResults: [UInt8] = [97, 98, 99, 100, 101]
        
        let testResults = Bytes().trimLeadingZeroes(bytes: bytes)
        XCTAssertEqual(testResults, expectedResults, "The Result is not as expected")
    }
    
    func testForGetHashLength() {
        let expectedResults: Int? = nil

        let testResults = Bytes().getHashLength(data: "123")
        XCTAssertEqual(testResults, expectedResults, "The Result is not as expected")

    }
    
}
