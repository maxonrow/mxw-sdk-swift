//
//  SigningKey.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 13/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class SigningKey {
    
    private var privateKey: String?
    private var publicKey: String?
    private var publicKeyType: String?
    private var compressedPublicKey: String?
    private var address: String?
    private var hexAddress: String?
    private var mnemonic: String?
    
    private var path: Int?
    private var keyPair: ECKeyPair?
    
    public func SigningKey(privateKey:String){
        //Numeric().hexStringToByteArray(input: privateKey)
    }
     
    public convenience init(keyPair:ECKeyPair){
        self.init()
        self.keyPair = keyPair
        self.privateKey = keyPair.getPrivateKey()
        self.publicKey = keyPair.getPublicKey()
        self.compressedPublicKey = keyPair.getCompressedPublicKey()
        self.publicKeyType = keyPair.getPublicKeyType()
        self.address = Keys().computeAddress(publicKey: keyPair.getCompressedPublicKey())
//        self.hexAddress = Keys.computeHexAddress(address)
    }
    public func getPrivateKey()->String {
        return privateKey ?? ""
    }

    public func setPrivateKey(privateKey:String) {
        self.privateKey = privateKey
    }

    public func getPublicKey() ->String{
        return publicKey ?? ""
    }

    public func setPublicKey(publicKey:String) {
        self.publicKey = publicKey
    }

    public func getPublicKeyType() -> String{
        return publicKeyType ?? ""
    }

    public func setPublicKeyType(publicKeyType:String) {
        self.publicKeyType = publicKeyType
    }

    public func getCompressedPublicKey()->String {
        return compressedPublicKey ?? ""
    }

    public func setCompressedPublicKey(compressedPublicKey:String) {
        self.compressedPublicKey = compressedPublicKey;
    }

    public func getAddress()->String {
        return address ?? ""
    }

    public func setAddress(address:String) {
        self.address = address
    }

    public func getHexAddress()->String {
        return hexAddress ?? ""
    }

    public func setHexAddress(hexAddress: String) {
        self.hexAddress = hexAddress
    }

    public func getMnemonic()->String {
        return mnemonic ?? ""
    }

    public func setMnemonic(mnemonic:String) {
        self.mnemonic = mnemonic
    }

    public func getPath()->Int {
        return path ?? 0
    }

    public func setPath(path:Int) {
        self.path = path
    }

    public  func getKeyPair()->ECKeyPair? {
        return keyPair
    }

    public func setKeyPair(keyPair: ECKeyPair) {
        self.keyPair = keyPair
    }
}
