//
//  NumericsTest.swift
//  mxw-sdk-framework-swiftTests
//
//  Created by William Loke on 10/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import XCTest
@testable import mxw_sdk_framework_swift

// Expected Results are cross-checked with Java's version of SDK to ensure both SDK works the same way
class NumericsTest: XCTestCase {
    
    let numeric = Numeric()
    
    func testForEncode() {
        let expectedResult = "0x63"
        let testResults = numeric.encodeQuantity(value: 99)
        
        XCTAssertEqual(testResults, expectedResult, "The expected result is not the same")
    }
    
    func testForDecode() {
        let expectedResult = "99"
        var testResults = ""
        do {
            try testResults = String(numeric.decodeQuantity(value: "0x63"))
        } catch {
            print(error)
        }
        XCTAssertEqual(testResults, expectedResult, "The expected result is not the same")
    }
    
    func testForValidHex() {
        
        //0x63 is a valid hex
        let testResult = numeric.isValidHex(value: "0x63")
        XCTAssert(testResult)
    }
    
    func testForContainsHexPrefix() {
        //0x63 contains hex value
        let testResult = numeric.containsHexPrefix(input: "0x63")
        XCTAssert(testResult)
    }
    
    func testForCleanHexPrefix() {
        let expectedResult = "63"
        let testResult = numeric.cleanHexPrefix(input: "0x63")
        
        XCTAssertEqual(testResult, expectedResult, "The expected result is not the same")
        
        let testResultTwo = numeric.cleanHexPrefix(input: "0x63")
        
        XCTAssertEqual(testResultTwo, expectedResult, "The expected result is not the same")
    }
    
    func testForPrependHex() {
        let expectedResult = "0x63"
        let testResult = numeric.prependHexPrefix(input: "63")
        
        XCTAssertEqual(testResult, expectedResult, "The expected result is not the same")
        
        let testResultTwo = numeric.prependHexPrefix(input: "0x63")
        
        XCTAssertEqual(expectedResult, testResultTwo, "The expected result is not the same")
    }
    
    func testForToHexString() {
        let dataOne: [Character] = ["a","b","c","d","e"]
        let bytes: [UInt8] = Array(String(dataOne).utf8)
        
        let expectedResult = "0x626364"
        let testResult = Numeric().toHexString(input: bytes, offset: 1, length: 3, withPrefix: true)
        
        XCTAssertEqual(expectedResult, testResult, "The expected result is not the same")
    }
    
    func testForIsIntegerValue() {
        let testResult = Numeric().isIntegerValue(value: 2) // 2 is an integer value
        let testResultTwo = Numeric().isIntegerValue(value: 2.2) // 2.2 is not an integer value
        
        XCTAssert(testResult)
        XCTAssertFalse(testResultTwo)
    }
}
