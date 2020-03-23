//
//  Signature.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 19/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class Signature {
    
    private var publicKey: MXWPublicKey
    private var signature: String
    
    public init(publicKey: MXWPublicKey, signature: String) {
        self.publicKey = publicKey
        self.signature = signature
    }
}
