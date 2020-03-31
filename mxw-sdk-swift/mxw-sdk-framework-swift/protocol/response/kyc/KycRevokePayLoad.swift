//
//  KycRevokePayLoad.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 20/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//
import SawtoothSigning

public class KycRevokePayLoad {
    
    private var KycRevokeModel: KycRevokeModel
    private var pubKey: PublicKey
    private var signature: String
    
    public init(kycRevokeModel: KycRevokeModel, pubKey: PublicKey, signature: String) {
        self.KycRevokeModel = kycRevokeModel
        self.pubKey = pubKey
        self.signature = signature
    }
}
