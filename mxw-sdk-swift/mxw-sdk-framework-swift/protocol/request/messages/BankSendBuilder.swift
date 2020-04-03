//
//  BankSendBuilder.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation
public class BankSendBuilder:TransactionValueBuilder {
    
    private var bankSend:BankSend?
    private var memo:String?


    public  init(from:String,  to:String,  value:Int) {
        
    }

    public convenience init(from:String, to:String,  value:Int,  memo:String) {
        self.init(from: from,to: to,value: value)
        self.memo = memo
    }

    public init(from:String, to:String,  value:Int,  memo:String, denom:String) {
        self.bankSend =  BankSend(fromAddress: from, toAddress: to, amount: value, denom: denom);
        self.memo = memo
    }
    
    public func getRoute() -> String {
        return "bank"
    }
    
    public func getTransactionType() -> String {
        return "bank-send"
    }
    
    public func build() -> TransactionValue {
        var  value =  TransactionValue()
        value.setMemo(memo: self.memo!)
        var message =  TransactionMessage()
        message.setType(type: "mxw/msgSend")
        //message.setValue(value: self.bankSend)
        //value.getMsg().append(message)
        return value;
    }
    
    
}
