//
//  MXWBytes.swift
//  MXW-SDK-Swift
//
//  Created by William Loke on 04/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit

public class Bytes {
    
    public func trimLeadingBytes(bytes:[UInt8], byte: UInt8) -> [UInt8] {
        var offset = 0
        for _ in 0...(bytes.count - 1) {
            if bytes[offset] != byte {
                break
            }
            offset += 1
        }
        return copyOfRange(arr: bytes, from: offset, to: bytes.count)!
    }
    
    public func trimLeadingZeroes(bytes:[UInt8]) -> [UInt8] {
        return trimLeadingBytes(bytes: bytes, byte: UInt8(0))
    }
    
    public func concat(bytesA: [UInt8], bytesB: [UInt8]) -> [UInt8] {
        let total = bytesA + bytesB
        return total
    }
    
    public func getHashLength(data: String) -> Int? {
        if (data.isValidHexNumber()) || (data.count % 2 != 0) {
            return nil
        }
        
        return ((data.count - 2)/2)
    }
    
    private func copyOfRange<T>(arr: [T], from: Int, to: Int) -> [T]? where T: ExpressibleByIntegerLiteral {
        guard from >= 0 && from <= arr.count && from <= to else { return nil }

        var to = to
        var padding = 0

        if to > arr.count {
            padding = to - arr.count
            to = arr.count
        }

        return Array(arr[from..<to]) + [T](repeating: 0, count: padding)
    }
    
    public init() {}
}

extension String {
    func isValidHexNumber() -> Bool {
       let chars = CharacterSet(charactersIn: "0123456789ABCDEF")

        guard self.uppercased().rangeOfCharacter(from: chars) != nil else {
          return false
       }
       return true
    }
}
