//
//  Provider.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 12/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

protocol Provider {
    func getNetwork()
    func getBlockNumber() -> UInt
    
    // func getTransactionRequest(route: String, transactionType: String, builder: TransactionValueBuilder) -> TransactionRequest
    // func getTransactionFee(route: String, transactionType: String, request: TransactionRequest) -> TransactionFee
    // func getTransactionFeeSetting(transactionType: String) -> TransactionFeeSetting
    
}
