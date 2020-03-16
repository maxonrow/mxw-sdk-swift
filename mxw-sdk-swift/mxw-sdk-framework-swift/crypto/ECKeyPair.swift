//
//  ECKeyPair.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 13/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import CryptoKit

public class ECKeyPair {
    private var privateKey: UInt
    private var publicKey: UInt
    private var publicKeyType: String = "PubKeySecp256k1"
    private var compressedPublicKey: UInt = 0
    private var publicKeyBytes: [UInt8] = []
    
    //    public func create(keyPair: KeyPair) -> ECKeyPair {
    //
    //    }
    
    func getPrivateKey() -> String {
        return Numeric().toHexStringWithPrefix(value: self.privateKey)
    }
    
    func getPublicKey() -> String {
        return Numeric().toHexStringZeroPadded(value: publicKey, size: 130, withPrefix: true)
    }
    
    public init(privateKey: UInt, publicKey: UInt) {
        self.privateKey = privateKey
        self.publicKey = publicKey
        self.compressedPublicKey = Sign().publicKeyFromPrivate(privKey: privateKey, compressed: true)
        self.publicKeyBytes = Numeric().hexStringToByteArray(input: getPublicKey())
        
    }
    
    
    
}
