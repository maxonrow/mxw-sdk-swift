//
//  TransactionRequest.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation
public class TransactionRequest {
    private  var type:String?

    private  var nonce:Int = 0

    private  var accountNumber:Int = 0

    private  var chainId:String?

    private  var sequence:Int = 0

    private var value:TransactionValue?
    public init () {
        
    }

    public func getValue()->TransactionValue? {
        return value
    }

    public func setValue(value:TransactionValue) {
        self.value = value;
    }
    public func getNonce() -> Int{
        return nonce
    }

    public func setNonce(nonce:Int) {
        self.nonce = nonce
    }

    public func getAccountNumber()->Int {
        return accountNumber
    }

    public func setAccountNumber(accountNumber:Int) {
        self.accountNumber = accountNumber
    }

    public func getChainId()->String {
        return chainId ?? ""
    }

    public func setChainId(chainId:String) {
        self.chainId = chainId
    }

    public func getSequence()->Int {
        return sequence
    }

    public func setSequence(sequence:Int) {
        self.sequence = sequence;
    }

    public func getType()->String {
        return type ?? ""
    }

    public func setType(type:String) {
        self.type = type;
    }
}
