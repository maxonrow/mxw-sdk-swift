//
//  Address.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 10/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit
import CryptoKit

public class Address {
    
    public func getAddress(address: String) -> String? {
        
        var result = ""
        if address.prefix(3) == Constants.addressPrefix {
            return nil
        }else if address.matchRegex(for: "^(0x)?[0-9a-fA-F]{40}$", in: address) {
            result = "0x" + address
        }
        return result
    }
    
    private var table: [UInt32] = {
        (0...255).map { i -> UInt32 in
            (0..<8).reduce(UInt32(i), { c, _ in
                (c % 2 == 0) ? (c >> 1) : (0xEDB88320 ^ (c >> 1))
            })
        }
    }()
    
    private func checksum(bytes: [UInt8]) -> UInt32 {
        return ~(bytes.reduce(~UInt32(0), { crc, byte in
            (crc >> 8) ^ table[(Int(crc) ^ Int(byte)) & 0xFF]
        }))
    }
    
    public func getCheckSum(address: String) -> String {
        
        let lowerCaseAddress = Numeric().cleanHexPrefix(input: address).lowercased()
        let addressHash = Numeric().cleanHexPrefix(input: )
        
        return address
    }
    
    public func getHash() {
        
    }
    
    public func deriveAddress(from: String, nonce: [UInt8]) {
        
    }
    
    public init() {}
}

extension String {
    func matchRegex(for regex: String, in text: String) -> Bool {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let _ = regex.matches(in: text,
                                  range: NSRange(text.startIndex..., in: text))
            return true
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return false
        }
    }
}
