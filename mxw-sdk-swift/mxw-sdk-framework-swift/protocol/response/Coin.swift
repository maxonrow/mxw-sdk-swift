//
//  Coin.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.//

import Foundation
public class Coin {
    public init(){

    }

    public convenience init(amount:Int, denom:String){
        self.init()
        self.amount = amount
        self.denom = denom
    }

    private var  amount:Int = 0

    private  var denom:String?

    public func getDenom()-> String {
        return denom ?? ""
    }

    public func setDenom(denom:String) {
        self.denom = denom
    }

    public func getAmount()->Int {
        return amount;
    }

    public func setAmount(amount:Int) {
        self.amount = amount
    }
}
