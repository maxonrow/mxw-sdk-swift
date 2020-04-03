//
//  KycWhiteListModel.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 16/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class KycWhiteListModel {
    private var from: String
    private var kycAddress: String
    private var nonce: UInt
    
    public init(from: String, kycAddress: String, nonce: UInt) {
        self.from = from
        self.kycAddress = kycAddress
        self.nonce = nonce
    }
}
