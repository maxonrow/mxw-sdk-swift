//
//  BankSend.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation
public class BankSend {
    private var amount = Array<Coin>()
    private var fromAddress:String?
    private var toAddress:String?

     public init() {

     }

    public init(fromAddress:String,  toAddress:String,  amount:Int){
         //this(fromAddress, toAddress, amount,Convert.Unit.CIN.toString());
     }
    public init(fromAddress:String,  toAddress:String,  amount:Int, denom:String){
         self.fromAddress = fromAddress;
         self.toAddress = toAddress;
//        if(denom == nil){
//            denom = Convert.Unit.CIN
//         self.amount = Collections.singletonList(new Coin(amount, denom));
//        }
     }

     public func getAmount()->Array<Coin> {
         return amount;
     }

    public func setAmount(amount:Array<Coin>) {
         self.amount = amount
     }

     public func getFromAddress()->String {
         return fromAddress ?? ""
     }

    public func setFromAddress(fromAddress:String) {
         self.fromAddress = fromAddress
     }

     public func getToAddress()->String {
         return toAddress ?? ""
     }

    public func setToAddress(toAddress:String) {
         self.toAddress = toAddress
     }
}
