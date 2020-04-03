//
//  KycWhiteList.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 16/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class KycWhiteList {
    private var kycData: KycData
    private var kycOwner: String
    
    public init(kycData: KycData, kycOwner: String) {
        self.kycData = kycData
        self.kycOwner = kycOwner
    }
}
