//
//  Wallet.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 12/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class Wallet {
    
    //    var signingKey = SigningKey()
    //    var provider = Provider()
    //    var accountNumber: UInt
    //    var transactionManager: TransactionManager
    //    func getProvider() {
    //        return
    //    }
    //
    
    func getAddress() -> String {
        return ""
    }
    
    func getHexAddress() -> String {
        return ""
    }
    
    func getPublicKey() -> String {
        
        return "PubKeySecp256k1"
    }
    
    func sendTransaction() {
        
    }
    
    func getPublicKeyType() -> String {
        return "PubKeySecp256k1"
    }
    
    func isWhiteListed(blockTag: BlockTag) -> Bool {
        
        return false
    }
    
    func getCompressedPublicKey() -> String {
        return ""
    }
    
    func sign() {
        
    }
    
    func createRandom() {
        
    }
    
    func signMessage(message: [UInt8], needToHash: Bool) -> String {
        let signedMessage = Secp256k1().sign(message: message)
        return signedMessage
    }
    
    func getKycAddress() {
        
    }
    
    public init() {}
}
