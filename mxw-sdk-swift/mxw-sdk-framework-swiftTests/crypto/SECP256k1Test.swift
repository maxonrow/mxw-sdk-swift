//
//  SECP256k1Test.swift
//  mxw-sdk-framework-swiftTests
//
//  Created by William Loke on 01/04/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import XCTest
@testable import mxw_sdk_framework_swift

class SECP256k1Test: XCTestCase {
    
    func TestForGetPublicKey() {
        let publicKey = Secp256k1.getPublicKey()
        
        XCTAssert(publicKey.hex().count > 1)
    }
    
    func TestForGetPrivateKey() {
        let privKey = Secp256k1.getPrivateKey()
        
        XCTAssert(privKey.hex().count > 1)
    }
    
}
