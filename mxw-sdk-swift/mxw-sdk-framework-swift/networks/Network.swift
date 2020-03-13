//
//  Network.swift
//  mxw-sdk-framework-swift
//
//  Created by William Loke on 12/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

//public class Network {
//
//    public init(chainId:String) {
//        self.chainId = chainId
//    }
//
//    public convenience init(chainId:String, name:String) {
//        self.chainId = chainId
//        self.name = name
//    }
//
//    private var name:String = ""
//
//    private var chainId: String = ""
//
//    public func getName()->String {
//        return name
//    }
//
//    public func setName( name:String) {
//        self.name = name
//    }
//
//    public func getChainId()->String {
//        return chainId
//    }
//
//    public func setChainId(chainId:String) {
//        self.chainId = chainId
//    }
//
//
//    public static func getNetwork(name:String) {
//        return getNetwork(name: name)
//    }
//
//    public static Network getNetwork(BigInteger chain) {
//        return getNetwork((Object)chain);
//    }
//
//    public static Network getNetwork(Network network) {
//        return getNetwork((Object)network);
//    }
//
//    private static Network getNetwork(Object network) {
//        if(network==null)
//            return null;
//
//        if(network instanceof BigInteger || network instanceof String) {
//            for (Networks net : Networks.values()) {
//                Network n = net.getNetwork();
//                if(n.chainId.equalsIgnoreCase(network.toString())){
//                    return new Network(n.chainId, n.name);
//                }
//            }
//            return new Network(network.toString(), "unknown");
//        }
//
//        Network thisNetwork = (Network) network;
//        Network n = null;
//        for (Networks net : Networks.values()) {
//            Network i = net.getNetwork();
//            if(i.chainId.equalsIgnoreCase(thisNetwork.chainId)){
//                n = i;
//                break;
//            }
//        }
//
//        if(n==null) {
//           return thisNetwork;
//        }
//
//        if(Strings.isEmpty(thisNetwork.chainId) && !thisNetwork.chainId.equalsIgnoreCase(n.chainId)){
//            throw new IllegalArgumentException("network chainId mismatch");
//        }
//
//        return new Network(thisNetwork.name, n.chainId);
//    }
//
//    private static Provider mxwDefaultProvider(String chainId) {
//        return new JsonRpcProvider("https://mainnet.mxw.one", chainId);
//    }
//
//    private static Provider etcDefaultProvider(String url, String chainId) {
//        return  new JsonRpcProvider(url, chainId);
//    }
//}
