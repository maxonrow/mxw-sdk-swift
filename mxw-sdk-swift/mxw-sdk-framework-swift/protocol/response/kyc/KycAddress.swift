//
//  KycAddress.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 16/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class KycAddress {
    private var country: String
    private var dob: Int
    private var id: String
    private var idExpiry: Int
    private var idType: String
    private var seed: String
    
    public init(country: String, idType: String, id: String, idExpiry: Int, dob: Int, seed: String) {
        self.country = country
        self.dob = dob
        self.id = id
        self.idExpiry = idExpiry
        self.idType = idType
        self.seed = seed
    }
}
