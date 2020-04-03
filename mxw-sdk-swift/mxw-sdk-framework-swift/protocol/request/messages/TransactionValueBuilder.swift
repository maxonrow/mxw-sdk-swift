//
//  TransactionValueBuilder.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation
public protocol TransactionValueBuilder {
    func getRoute()->String

    func getTransactionType()->String

    func build()->TransactionValue
}
