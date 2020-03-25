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
    
     func getTransactionRequest(route: String, transactionType: String, builder: TransactionValueBuilder) -> TransactionRequest
     func getTransactionFee(route: String, transactionType: String, request: TransactionRequest) -> TransactionFee
    // func getTransactionFeeSetting(transactionType: String) -> TransactionFeeSetting
    
    func getStatus()
    
//    func getTokenTransactionFee(symbol: String, transactionType: String) -> TransactionFee
//    func getTokenState(symbol: String, blockTag: BlockTag) -> TokenState
//    func getTokenList(blockTag: BlockTag) -> TokenList
//    func getTokenAccountState(symbol: String, address: String, blockTag: BlockTag) -> TokenAccountState
    
//    func getAcoountState(addressOrName: String) -> AccountState
//    func getAcoountState(addressOrName: String, blockTag: BlockTag) -> AccountState
//    func getAccountNumber(addressOrName: String)
//    func getAccountNumber(addressOrName: String, blockTag: BlockTag) -> UInt
//    func getBalance(addressOrName: String, blockTag: BlockTag) -> UInt
//    func getBalance(addressOrName: String, blockTag: BlockTag) -> UInt
    
//    func getTransactionCount(addressOrName: String) -> UInt
//    func getTransactionCount(addressOrName: String, blockTag: BlockTag) -> UInt

//    func sendTransaction(signedTransaction: String, async: Bool) -> TransactionResponse
    
    func getBlock(height: UInt)
    func getBlock(blockHashOrBlockTag: BlockTag)
//    func getTransaction(transactionHash: String) -> TransactionReceipt
    
    func isWhiteListed(addressOrName: String) -> Bool
//    func isWhiteListed(addressOrName: String, blockTag: BlockTag) -> Bool
    func getKycAddress(addressOrName: String) -> String
//    func getKycAddress(addressOrName: String, blockTag: BlockTag) -> String
    
//    func resolveName(name: String) -> String
//    func resolveName(name: String, blockTag: BlockTag) -> String
//    func lookupAddress(name: String) -> String
//    func lookupAddress(name: String, blockTag: BlockTag) -> String
//    func getAliasState(name: String) -> String
//    func getAliasState(name: String, blockTag: BlockTag) -> String
    
//    func waitForTransaction(transactionHash: String, confirmation: UInt) -> TransactionReceipt
}
