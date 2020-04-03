//
//  TransactionFee.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation
public class TransactionFee {
    public init() {
    }

    private var  amount:Array<Coin>?

    private var gas:Int = 0

    public func getAmount()->Array<Coin>  {
        return amount ?? []
    }

    public func setAmount(amount:Array<Coin>) {
        self.amount = amount
    }

    public func getGas()->Int {
        return gas
    }

    public func setGas(gas:Int) {
        self.gas = gas
    }
}
