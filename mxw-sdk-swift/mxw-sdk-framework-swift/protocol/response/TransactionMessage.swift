//
//  TransactionMessage.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation
public class TransactionMessage {
    
    private var type:String?

    private  var value:[Any]?

    public func getType() -> String{
        return type ?? ""
    }

    public func setType(type:String) {
        self.type = type
    }

    public func getValue()->[Any]? {
        return value!
    }

    public func setValue(value:[Any]) {
        self.value = value;
    }
}
