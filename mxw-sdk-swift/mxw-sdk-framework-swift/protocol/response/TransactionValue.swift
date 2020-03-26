//
//  TransactionValue.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation

public class TransactionValue {
    private  var signatures:[Signature] = []

    private var fee:TransactionFee?

    private var memo:String?

    private var msg:[TransactionMessage] = []

    public init() {
        self.msg =  [TransactionMessage]()
        self.signatures = [Signature]()
    }

    public func getFee()->TransactionFee? {
        return fee
    }

    public func setFee(fee:TransactionFee) {
        self.fee = fee;
    }

    public func getMemo()->String {
        return memo ?? ""
    }

    public func setMemo(memo:String) {
        self.memo = memo;
    }

    public func getMsg()->[TransactionMessage]  {
        return msg
    }

    public func setMsg(msg:[TransactionMessage]) {
        self.msg = msg;
    }

    public func getSignatures()->[Signature] {
        return signatures
    }

    public func setSignatures(signatures:[Signature]) {
        self.signatures = signatures;
    }
}
