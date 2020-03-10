//
//  ConvertTest.swift
//  mxw-sdk-framework-swiftTests
//
//  Created by William Loke on 09/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import XCTest
@testable import mxw_sdk_framework_swift

class ConvertTest: XCTestCase {
    
    let convert = Convert()
    let globalNumber = 0.132123
    
    func testConvertToCIN() {
        let expectedResults = Decimal(0.132123)
        let testResults = convert.fromCin(number: Decimal(globalNumber), unit: .CIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertFromCIN() {
        let expectedResults = Decimal(0.132123)
        let testResults = convert.toCin(number: Decimal(globalNumber), unit: .CIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertToGCIN() {
        let expectedResults = Decimal(132123000)
        let testResults = convert.toCin(number: Decimal(globalNumber), unit: .GCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertFromGCIN() {
        let expectedResults = Decimal(0.000000000132123)
        let testResults = convert.fromCin(number: Decimal(globalNumber), unit: .GCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertToJCIN() {
        let expectedResults = Decimal(132123000000000)
        let testResults = convert.toCin(number: Decimal(globalNumber), unit: .JCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
        
    }
    
    func testConvertFromJCIN() {
        let expectedResults = Decimal(0.000000000000000132123)
        let testResults = convert.fromCin(number: Decimal(globalNumber), unit: .JCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertToKCIN() {
        let expectedResults = Decimal(132.123)
        let testResults = convert.toCin(number: Decimal(globalNumber), unit: .KCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertFromKCIN() {
        let expectedResults = Decimal(0.000132123)
        let testResults = convert.fromCin(number: Decimal(globalNumber), unit: .KCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertToMCIN() {
        let expectedResults = Decimal(132123)
        let testResults = convert.toCin(number: Decimal(globalNumber), unit: .MCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertFromMCIN() {
        let expectedResults = Decimal(0.000000132123)
        let testResults = convert.fromCin(number: Decimal(globalNumber), unit: .MCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertToMXW() {
        let expectedResults = Decimal(132123000000000000)
        let testResults = convert.toCin(number: Decimal(globalNumber), unit: .MXW)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertFromMXW() {
        let expectedResults = Decimal(0.000000000000000000132123)
        let testResults = convert.fromCin(number: Decimal(globalNumber), unit: .MXW)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertToTCIN() {
        let expectedResults = Decimal(132123000000)
        let testResults = convert.toCin(number: Decimal(globalNumber), unit: .TCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
    
    func testConvertFromTCIN() {
        let expectedResults = Decimal(0.000000000000132123)
        let testResults = convert.fromCin(number: Decimal(globalNumber), unit: .TCIN)
        
        XCTAssertEqual(expectedResults, testResults, "Result is not same as expected")
    }
}
