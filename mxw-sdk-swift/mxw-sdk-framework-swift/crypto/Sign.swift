//
//  Sign.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 13/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class Sign {
    
    public func publicKeyFromPrivate(privKey: UInt, compressed: Bool) -> UInt {
        return privKey
    }
    
    public func signedMessageHashToKey(messageHash: [UInt8]) -> UInt {
        return 0
    }
    
    public init() {}
}
