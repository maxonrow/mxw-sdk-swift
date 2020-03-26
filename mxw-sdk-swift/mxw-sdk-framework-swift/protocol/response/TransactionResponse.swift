//
//  TransactionResponse.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation
 
public class TransactionResponse {
    private  var hash:String?

    public init(){

    }

    public convenience init(hash:String) {
        self.init()
        self.hash = hash
    }


    public func getHash()->String {
        return hash ?? ""
    }

    public func setHash(hash:String) {
        self.hash = hash;
    }
}
