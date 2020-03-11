//
//  Convert.swift
//  MXW-SDK-Swift
//
//  Created by William Loke on 05/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit

public class Convert {
    
    public enum Unit {
        case CIN
        case KCIN
        case MCIN
        case GCIN
        case TCIN
        case JCIN
        case MXW
        
        var info: (name: String, factor: Int) {
            switch self {
            case .CIN:
                return ("cin", 0)
            case .KCIN:
                return ("kcin", 3)
            case .MCIN:
                return ("Mcin", 6)
            case .GCIN:
                return ("Gcin", 9)
            case .TCIN:
                return ("Tcin", 12)
            case .JCIN:
                return ("Jcin", 15)
            case .MXW:
                return ("mxw", 18)
            }
        }
    }
    
    public func fromCin(number: Decimal, unit: Unit) -> Decimal {
        let factor = getFactor(unit: unit)
        return (number/factor)
    }
    
    public func toCin(number: Decimal, unit: Unit) -> Decimal {
        let factor = getFactor(unit: unit)
        return (number*factor)
    }
    
    func getFactor(unit: Unit) -> Decimal {
        return pow(10, unit.info.factor)
    }

    public init() {}
}
