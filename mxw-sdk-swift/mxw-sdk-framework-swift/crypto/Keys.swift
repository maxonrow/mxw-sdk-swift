//
//  Keys.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 29/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class Keys {
    
    var PRIVATE_KEY_SIZE = 32
    var PUBLIC_KEY_SIZE_COMPRESSED = 64
    var PUBLIC_KEY_SIZE_COMPRESSED_PADDED = 66
    var PUBLIC_KEY_SIZE = 130
    var PRIVATE_KEY_LENGTH_IN_HEX = 130 << 1
    var ADDRESS_SIZE = 160
    var ADDRESS_LENGTH_IN_HEX = 160 >> 2
    
    public func createSecp256k1KeyPair() -> ECKeyPair {
        return ECKeyPair(privateKey: 0, publicKey: 0)
    }
    
    public func computeAddress(publicKey: String) -> String {
        let key = Numeric().hexStringToByteArray(input: publicKey)
        let bytes = Data(fromArray: key)
        return Address().getAddress(address: Bech32().encode(Constants.addressPrefix, values: bytes))! 
    }
    
    public func computeHexAddress(address: String) -> String {
        var stringData = Data()
        var inputData: [UInt8] = []
        do {
            stringData =  try Bech32().decode(address).checksum
            inputData = [UInt8](stringData)
        } catch {
            print("Couldnt decode address")
        }
        return Address().getAddress(address: Numeric().toHexString(input: inputData))! // ERROR HERE
    }
    
    public func computePublicKey(key: String, compressed: Bool) -> String {
        return Numeric().hexStringToByteArray(input: key).toHexString()
    }
    
    public func recoverPublicKey(digest: [UInt8], Signature: Signature) -> String {
        let key: UInt = Sign().signedMessageHashToKey(messageHash: digest)
        return computePublicKey(key: Numeric().toHexStringWithPrefix(value: key), compressed: true)
    }
    
//    public func recoverAddress(digest:[UInt8], signature: Signature) -> String {
//        return computeAddress(publicKey: recoverPublicKey(digest: digest, Signature: <#Signature#>))
//    }
    
    public func getKeyAddressHex(payload: String) -> String {
        let hash = [UInt8](hex: payload)
        return Numeric().toHexString(input: hash)
    }
    
    public func verifyMessage() {
        
    }
}

extension Data {

    init<T>(fromArray values: [T]) {
        var values = values
        self.init(buffer: UnsafeBufferPointer(start: &values, count: values.count))
    }

    func toArray<T>(type: T.Type) -> [T] {
        let value = self.withUnsafeBytes {
            $0.baseAddress?.assumingMemoryBound(to: T.self)
        }
        return [T](UnsafeBufferPointer(start: value, count: self.count / MemoryLayout<T>.stride))
    }

}
