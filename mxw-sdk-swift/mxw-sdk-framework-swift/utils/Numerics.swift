//
//  Numerics.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 10/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit

public class Numeric {
    
    public func encodeQuantity(value: UInt) -> String {
        return "0x\(String(value, radix: 16, uppercase: false))"
    }
    
    public func decodeQuantity(value: String) throws -> UInt {
        if !isValidHex(value: value) {
            throw DecodingError.NotValidHex
        }
        if let returnValue = UInt((String(value.dropFirst(2))), radix: 16) {
            return returnValue
        } else {
            return 0
        }
    }
    
    public func cleanHexPrefix(input: String) -> String {
        let result = input
        if input.prefix(2) == "0x" {
            return String(result.dropFirst(2))
        } else {
            return result
        }
    }
    
    public func containsHexPrefix(input: String) -> Bool {
        return (input.prefix(2) == "0x")
    }
    
    public func isValidHex(value: String) -> Bool {
        return ((value.count > 2) && (value.prefix(2) == "0x"))
    }
    
    public func prependHexPrefix(input: String) -> String {
        if input.prefix(2) != "0x" {
            return "0x\(input)"
        } else {
            return input
        }
    }
    
    public func hexStringToByteArray(input: String) -> [UInt8]{
        return input.hexa
    }
    
    public func toHexString(input: [UInt8], offset: Int, length: Int, withPrefix: Bool) -> String {
        var newString = ""
        if withPrefix {
            newString.append(contentsOf: "0x")
        }
        let range = offset + length - 1
        for i in offset...range {
            newString.append(contentsOf: String(format: "%02x", input[i] & 0xFF))
        }
        
        return newString
    }
    
    public func toHexString(input: [UInt8]) -> String {
        return toHexString(input: input, offset: 0, length: input.count, withPrefix: true)
    }
    
    public func toByteArray<T>(_ value: T) -> [UInt8] {
        var value = value
        return withUnsafePointer(to: &value) {
            $0.withMemoryRebound(to: UInt8.self, capacity: MemoryLayout<T>.size) {
                Array(UnsafeBufferPointer(start: $0, count: MemoryLayout<T>.size))
            }
        }
    }
    
    public func isIntegetValue(value: UInt) -> Bool {
        return (value.signum() == 0)
    }
    
    public init() {}
}

extension StringProtocol {
    var hexa: [UInt8] {
        var startIndex = self.startIndex
        return stride(from: 0, to: count, by: 2).compactMap { _ in
            let endIndex = index(startIndex, offsetBy: 2, limitedBy: self.endIndex) ?? self.endIndex
            defer { startIndex = endIndex }
            return UInt8(self[startIndex..<endIndex], radix: 16)
        }
    }
}
