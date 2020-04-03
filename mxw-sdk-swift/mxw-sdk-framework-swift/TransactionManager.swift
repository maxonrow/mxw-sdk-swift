//
//  TransactionManager.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 25/03/20.
//  Copyright © 2020 William Loke. All rights reserved.
//

import Foundation

public class TransactionManager {
    private  var provider:Provider
    private var fromAddress:String?


    init(provider:Provider,  fromAddress:String) {
        self.provider = provider
        self.fromAddress = fromAddress
    }

    public func getFromAddress()->String {
        return fromAddress ?? ""
    }

    func getProvider()->Provider {
        return self.provider
    }

    func setProvider(provider:Provider) {
        self.provider = provider
    }

    /**
     * simplified send transaction with single signature
     *
     * @param builder
     * @return
     */
    public func  sendTransaction(builder:TransactionValueBuilder){}

    /**
     * capable to send transaction with multiple signatures
     *
     * @param request
     * @return
     */
   // public abstract TransactionResponse sendTransaction(TransactionRequest request);

   // public abstract Signature sign(Object payload);

    /**
     * Sign and append signature to transaction request
     *
     * @param request
     * @return
     */
    //public abstract TransactionRequest signRequest(TransactionRequest request);

    public func signAndSerialize(request:TransactionRequest){}

    public func createTransaction( builder:TransactionValueBuilder)->TransactionRequest {
        let request:TransactionRequest = self.provider.getTransactionRequest(route: builder.getRoute(), transactionType: builder.getTransactionType(), builder: builder)
        if (request.getChainId().isEmpty) {
            request.setChainId(chainId:request.getChainId())
        }
        request.getValue()!.setFee(fee: self.provider.getTransactionFee(route: "", transactionType: "", request: request))
        return request;
    }

}
