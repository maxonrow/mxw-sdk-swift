//
//  MXWStrings.swift
//  MXW-SDK-Swift
//
//  Created by William Loke on 05/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit

public class Strings {
    
    public func toCsv(src: [String]) -> String {
        return join(src: src, delimiter: ", ")
    }
    
    public func join(src: [String], delimiter: String) -> String {
        return src.joined(separator: delimiter)
    }
    
    public func capitaliseFirstLetter(string: String) -> String {
        return string.prefix(1).uppercased() + string.dropFirst()
    }
    
    public func lowerCaseFirstLetter(string: String) -> String {
        return string.prefix(1).lowercased() + string.dropFirst()
    }
    
    public func jsonStringCorrection(value: String) -> String {
        return value.replacingOccurrences(of: "\\\\\\\"", with: "\"").replacingOccurrences(of: "\\\"", with: "\"").replacingOccurrences(of: "\"[", with: "[").replacingOccurrences(of: "]\"", with: "]").replacingOccurrences(of: "\"{", with: "{").replacingOccurrences(of: "}\"", with: "}")
    }
    
    public func mxwRepeat(value: Character, n: Int) -> String {
        var result = ""
        for _ in 0 ... n - 1 {
            result.insert(value, at: result.index(result.startIndex, offsetBy: 0))
        }
        return result
    }
    
    public func jsJsonString(value: String) -> Bool {
        return ((value.prefix(3) == "{" && value.suffix(3) == "}") || (value.prefix(3) == "[" && value.suffix(3) == "]"))
    }

    public init() {}
}

