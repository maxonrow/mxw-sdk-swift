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
       static let AddressZero = "mxw000000000000000000000000000000000000000"
       static let HashZero = "0x0000000000000000000000000000000000000000000000000000000000000000"

       //static let DefaultHDPath = 44 | HARDENED_BIT, 376 | HARDENED_BIT, 0 | HARDENED_BIT, 0, 0

       static let Power18UnitName = "cin"
       static let Power16UnitName = "kcin"
       static let Power13UnitName = "Mcin"
       static let Power10UnitName = "Gcin"
       static let Power7UnitName = "Tcin"
       static let Power4UnitName = "Jcin"
       static let Power1UnitName = "mxw"

       static let UnitDecimals = 18
       static let UnitName = Power1UnitName
       static let SmallestUnitName = Power18UnitName}

extension Numeric {
    enum MyDecodingError: Error {
        case NotValidHex
        
        public var errorDescription: String? {
            switch self {
            case .NotValidHex:
                return "Value must be in format 0x[1-9]+[0-9]* or 0x0"
            }
        }
    }
}
