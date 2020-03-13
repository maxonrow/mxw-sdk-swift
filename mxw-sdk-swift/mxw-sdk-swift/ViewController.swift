//
//  ViewController.swift
//  mxw-sdk-swift
//
//  Created by William Loke on 09/03/2020.
//  Copyright © 2020 William Loke. All rights reserved.
//

import UIKit
import mxw_sdk_framework_swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dataOne: [Character] = ["a","b","c","d","e"]
        let bytes: [UInt8] = Array(String(dataOne).utf8)
        
//        print(Numeric().hexStringToByteArray(input: "abc"))
//        print(Hash.init().sha3String(utf8String: "123"))
        // Do any additional setup after loading the view.
    }


}

