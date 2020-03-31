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
    
    func getProvider() -> Provider? {
        return self.provider
    }
    public init( privateKey:SigningKey) {
    }
    
    public func getAddress() -> String {
        return signingKey.getAddress()
    }
    public func getHexAddress() -> String {
        return signingKey.getHexAddress()
    }
    func getPublicKey() -> String {
        return Secp256k1.getPublicKey().hex() // return signingKey.getPublicKey()
    }
    func getPublicKeyType() -> String {
        return signingKey.getPublicKeyType()
    }
    func getCompressedPublicKey() -> String {
        return signingKey.getCompressedPublicKey()
    }
    func getPrivateKey()->String{
        return Secp256k1.getPrivateKey().hex() // return signingKey.getPrivateKey()
    }
    func signMessage(message: [UInt8], needToHash: Bool) -> String {
           let signedMessage = Secp256k1().sign(message: message)
           return signedMessage
       }
//    func sendTransaction(request: TransactionRequest) -> TransactionResponse {
//        return
//    }
    func sign(request: TransactionRequest) {
        self.transactionManager!.signAndSerialize(request: request)
    }
//    func sendTransaction(builder: TransactionValueBuilder) -> TransactionResponse {
//        return self.transactionManager!.sendTransaction(builder: builder)
//    }
    
    func sendTransaction() {
    }
    
    public func isWhitelisted(blockTag:BlockTag)->Bool {
        return self.provider!.isWhiteListed(addressOrName: self.getAddress(), blockTag: blockTag)
    }

//    func createRandom() ->ECKeyPair{
//        return
//    }
    
//    func getAccountNumber(blockTag:BlockTag)->Int{
//        self.accountNumber = self.provider!.getAccountNumber(addressOrName: self.getAddress(), blockTag: blockTag)
//        return self.accountNumber;
//    }
    public func fromMnemonic(mnemonic:String, path:[Int]) {
        return SigningKey().setMnemonic(mnemonic: mnemonic)
    }
//    public func getKycAddress(blockTag:BlockTag) {
//        return self.provider!.getKycAddress(self.getAddress(), blockTag);
//    }
    public func getKycAddress(blockTag:BlockTag)->String {
        return (self.provider!.getKycAddress(addressOrName: self.getAddress()))
    }
    public func getBalance(blockTag:BlockTag) {
        return (self.provider?.getBlock(blockHashOrBlockTag: blockTag))!
    }
    
    public func  createNewWallet() {
        
    }
    public init(keyPair:ECKeyPair) {
        keyPair.getPrivateKey()
    }
}
