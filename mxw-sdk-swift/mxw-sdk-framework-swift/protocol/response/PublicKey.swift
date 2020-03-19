//
//  PublicKey.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 19/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class PublicKey {
    private var type: String
    private var value: String
    
    public init(type: String, value: String) {
        self.type = type
        self.value = value
    }
}
