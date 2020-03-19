//
//  KycData.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 19/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class KycData {
    
    private var kycWhitelistPayload: KycWhiteListPayLoad
    private var signatureList: [Signature] = []
    
    public init(kycWhitelistPayload: KycWhiteListPayLoad) {
        self.kycWhitelistPayload = kycWhitelistPayload
    }
}
