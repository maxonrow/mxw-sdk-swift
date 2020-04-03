//
//  KycRevoke.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 20/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class KycRevoke {
    private var kycOwner: String
    private var kycRevokePayLoad: KycRevokePayLoad
    private var signatureList: [Signature] = []
    
    public init(kycOwner: String, kycRevokePayLoad: KycRevokePayLoad, signature: Signature) {
        self.kycOwner = kycOwner
        self.kycRevokePayLoad = kycRevokePayLoad
        self.signatureList.append(signature)
    }
}
