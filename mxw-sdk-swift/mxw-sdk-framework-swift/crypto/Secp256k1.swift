//
//  Secp256k1.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 23/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//
// Implemented from https://github.com/bitwiseio/sawtooth-sdk-swift

import SawtoothSigning

public class Secp256k1 {

    private var signer: Signer
    private var privateKey: PrivateKey
    private static var context = Secp256k1Context()

    public func sign(message: [UInt8]) -> String {
        var result = ""
        do {
            result = try signer.sign(data: message)
        } catch {
            print("Error signing")
        }
        return result
    }

    public static func getPrivateKey() -> PrivateKey {        
        if let privateKey = UserDefaults.standard.string(forKey: "privateKey") {
            return Secp256k1PrivateKey.fromHex(hexPrivKey: privateKey)
        } else {
            let privateKey = context.newRandomPrivateKey()
            UserDefaults.standard.set(privateKey.hex(), forKey: "privateKey" )
            do {
                let pubKey = try context.getPublicKey(privateKey: privateKey)
                UserDefaults.standard.set(pubKey.hex(), forKey: "publicKey" )
            } catch {
                if #available(iOS 10.0, *) {
                    print("Error creating public key")
                }
            }
            return privateKey
        }
    }
    
    public static func getPublicKey() -> PublicKey {
        if let publicKey = UserDefaults.standard.string(forKey: "publicKey") {
            return Secp256k1PublicKey.fromHex(hexPubKey: publicKey)
        } else {
            let privateKey = context.newRandomPrivateKey()
            var pubKey: PublicKey?
            UserDefaults.standard.set(privateKey.hex(), forKey: "privateKey" )
            do {
                pubKey = try context.getPublicKey(privateKey: privateKey)
                UserDefaults.standard.set(pubKey?.hex(), forKey: "publicKey" )
            } catch {
                if #available(iOS 10.0, *) {
                    print("Error creating public key")
                }
            }
            return pubKey!
        }
    }
    
    public static func verify(signature: String, data: [UInt8], publicKey: PublicKey) -> Bool {
        var result = false
        do {
            try result = context.verify(signature: signature, data: data, publicKey: publicKey)
        } catch {
            if #available(iOS 10.0, *) {
                print("Error verifying")
            }
        }
        return result
    }

    public init() {
        self.privateKey = Secp256k1.getPrivateKey()
        self.signer = Signer(context: Secp256k1.context, privateKey: self.privateKey)
    }
}
