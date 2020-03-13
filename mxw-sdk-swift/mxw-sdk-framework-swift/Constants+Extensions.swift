//
//  Constants.swift
//  MXW-SDK-Swift
//
//  Created by William Loke on 04/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit

class Constants {
    static let addressPrefix = "mxw"
}

extension Numeric {
    enum DecodingError: LocalizedError {
        case NotValidHex
        
        public var errorDescription: String? {
            switch self {
            case .NotValidHex:
                return "Value must be in format 0x[1-9]+[0-9]* or 0x0"
            }
        }
    }
}
