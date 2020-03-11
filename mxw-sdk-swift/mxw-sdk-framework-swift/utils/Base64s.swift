//
//  MXWBase64s.swift
//  MXW-SDK-Swift
//
//  Created by William Loke on 04/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit

public class Base64s {
    
    public func decode(encoded: String) -> [UInt8] {
        return encoded.bytes
    }
    
    public func decode(encoded: [UInt8]) -> String {
        return String(bytes: encoded, encoding: .utf8)!
    }
    
    public func encode(data: String) -> [UInt8] {
        return data.bytes
    }
    
    public func encode(data: [UInt8]) -> String {
        return String(bytes: data, encoding: .utf8)!
    }
    
    public func base16to64(hex: String) -> String {
        var hexResult = hex
        if (hexResult.prefix(2) == "0x") || (hexResult.prefix(2) == "0X") {
            hexResult = hexResult[2..<hexResult.count]
        }
        return hexResult
    }
    
    public func isValidBase64(b64String: String) -> Bool {
        return b64String.matchRegex(for: "(?:[A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=)", in: b64String)
    }
    
    public init() {}
}

extension StringProtocol {
    var bytes: [UInt8] { .init(utf8) }
}

extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }

    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}
