//
//  KycWhiteListPayLoad.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 19/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//
import SawtoothSigning

public class KycWhiteListPayLoad {
    private var kycWhitelistModel: KycWhiteListModel
    private var pubKey: PublicKey
    private var signature: String
    
    public init(kycWhitelistModel: KycWhiteListModel, pubKey: PublicKey, signature: String ) {
        self.kycWhitelistModel = kycWhitelistModel
        self.pubKey = pubKey
        self.signature = signature
    }
}
