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
    
    public func create() -> [String : SecKey] {
        self.getKey()!
    }
    
    func getKey() -> [String: SecKey]? {

        let attributes: [String: Any] =
            [kSecAttrKeySizeInBits as String: 256,
             kSecAttrKeyType as String: kSecAttrKeyTypeEC,
             kSecPrivateKeyAttrs as String:
                [kSecAttrIsPermanent as String:    false]
        ]
        var error: Unmanaged<CFError>?
            guard let privateKey = SecKeyCreateRandomKey(attributes as CFDictionary, &error) else {
                let err = error!.takeRetainedValue() as Error
                print(err.localizedDescription)
                return nil
            }
            guard let publicKey = SecKeyCopyPublicKey(privateKey) else {
                print("Error occured while creating public key")
                return nil
            }
            return ["publicKey": publicKey, "privateKey": privateKey]
    }
    
    func getPrivateKey() -> String {
        return Numeric().toHexStringWithPrefix(value: self.privateKey)
    }
    
    func getPublicKey() -> String {
        return Numeric().toHexStringZeroPadded(value: publicKey, size: 130, withPrefix: true)
    }
    
    func getPublicKeyType() -> String {
        return "PubKeySecp256k1"
    }
    
    public init(privateKey: UInt, publicKey: UInt) {
        self.privateKey = privateKey
        self.publicKey = publicKey
        self.compressedPublicKey = Sign().publicKeyFromPrivate(privKey: privateKey, compressed: true)
        self.publicKeyBytes = Numeric().hexStringToByteArray(input: getPublicKey())
    }
    func getCompressedPublicKey()->String {
        return Numeric().toHexStringZeroPadded(value: self.compressedPublicKey,size: Keys().PUBLIC_KEY_SIZE_COMPRESSED_PADDED, withPrefix: true)
    }
    
}
