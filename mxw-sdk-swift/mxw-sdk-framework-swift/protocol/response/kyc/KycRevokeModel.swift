//
//  KycRevokeModel.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 20/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class KycRevokeModel {
    
    private var from: String
    private var to: String
    private var nonce: UInt
    
    public init(from: String, nonce: UInt, to: String) {
        self.from = from
        self.nonce = nonce
        self.to = to
    }
}
