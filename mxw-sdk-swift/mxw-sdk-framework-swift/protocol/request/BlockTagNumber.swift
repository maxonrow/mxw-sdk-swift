//
//  BlockTagNumber.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 13/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

public class BlockTagNumber: BlockTag {
    
    private var blockNumber: UInt
    
    public init(blockNumber: UInt) {
        self.blockNumber = blockNumber
    }
}
