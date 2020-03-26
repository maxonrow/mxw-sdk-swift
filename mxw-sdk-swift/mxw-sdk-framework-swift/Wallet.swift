//
//  Wallet.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 12/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//
import CryptoKit

public class Wallet: SignerProvider {
    
    static  let MISSING_PROVIDER = "missing provider";
    var signingKey = SigningKey()
    var provider : Provider?
    var accountNumber: UInt = 0
    var transactionManager : TransactionManager?
    func getProvider() {
            
    }
    public init( privateKey:SigningKey) {
        
    }
    
    func getAddress() -> String {
        return signingKey.getAddress()
    }
    func getHexAddress() -> String {
        return signingKey.getHexAddress()
    }
    func getPublicKey() -> String {
        return signingKey.getPublicKey()//"PubKeySecp256k1"
    }
    func getPublicKeyType() -> String {
           return signingKey.getPublicKeyType()//"PubKeySecp256k1"
    }
    func getCompressedPublicKey() -> String {
        return signingKey.getCompressedPublicKey()
    }
    func getPrivateKey()->String{
        return signingKey.getPrivateKey()
    }
    func signMessage(message: [UInt8], needToHash: Bool) -> String {
           let signedMessage = Secp256k1().sign(message: message)
           return signedMessage
       }
//    func sendTransaction(request: TransactionRequest) -> TransactionResponse {
//
//    }
    func sign(request: TransactionRequest) {
        self.transactionManager!.signAndSerialize(request: request)
    }
//    func sendTransaction(builder: TransactionValueBuilder) -> TransactionResponse {
//       // return self.transactionManager!.sendTransaction(builder: builder)
//    }
    
    
    func sendTransaction() {
        
    }
    func isWhiteListed(blockTag: BlockTag) -> Bool {
        return false
    }
    func sign() {
        
    }
    func createRandom() {
        
    }
    func getKycAddress() {
        
    }
    func getAccountNumber(){
        
    }
    public func getKycAddress(blockTag:BlockTag)->String {
        return (self.provider?.getKycAddress(addressOrName: blockTag as! String))!
    }
    public func getBalance(blockTag:BlockTag) {
        return (self.provider?.getBlock(blockHashOrBlockTag: blockTag))!
    }
    public func  createNewWallet() {
        
    }
//    public init() {
//
//    }
}
