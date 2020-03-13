//
//  Signer.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 12/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

protocol Signer {
    func getProvider()
    func getAddress()->String
    func getHexAddress()->String
    func getPublicKeyType()->String
    func getCompressedPublicKey()->String
    func signMessage(message:[Int], needToHash:Bool)
//    func sign(request:TransactionRequest)->String
//    func sendTransaction(builder:TransactionValueBuilder)->TransactionResponse
//    func sendTransaction(request:TransactionRequest)->TransactionResponse
}
