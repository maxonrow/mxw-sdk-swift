//
//  Signer.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

protocol SignerProvider {
    func getProvider()->Provider?
    func getAddress()->String
    func getHexAddress()->String
    func getPublicKeyType()->String
    func getCompressedPublicKey()->String
    func signMessage(message:[UInt8], needToHash:Bool)-> String
    func sign(request:TransactionRequest)
//    func sendTransaction(builder:TransactionValueBuilder)->TransactionResponse
//    func sendTransaction(request:TransactionRequest)->TransactionResponse
}
