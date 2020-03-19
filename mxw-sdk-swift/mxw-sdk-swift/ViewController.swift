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
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    let stringFile = String(repeating: "x", count: 4194304)
    override func viewDidLoad() {
        super.viewDidLoad()
        let dataOne: [Character] = ["a","b","c","d","e"]
        let bytes: [UInt8] = Array(String(dataOne).utf8)
        
        
        //        print(AES256CBC.encryptString(stringFile, password: "12345678901234567890123456789012") as Any)
        
        
        
        //        print(Numeric().hexStringToByteArray(input: "abc"))
        //        print(Hash.init().sha3String(utf8String: "123"))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapped(_ sender: Any) {
        getTimeDifference()
    }
    
    
    func getTimeDifference() {
        let convertedString = Array(stringFile.utf8)
        var text = ""
        do {
            let timeInMiliSecDate = Date()
            let timeInMiliSec = Int (timeInMiliSecDate.timeIntervalSince1970 * 1000)
            print("encryption starts at \(timeInMiliSec) milliseconds")
            let aes = try AES(key: Array("secret0key000000".utf8), blockMode: CBC(iv: Array("0123456789012345".utf8)), padding: .noPadding).encrypt(convertedString)
            let timeInMiliSecDate2 = Date()
            let timeInMiliSec2 = Int (timeInMiliSecDate2.timeIntervalSince1970 * 1000)
            print("time for encryption is \(timeInMiliSec2 - timeInMiliSec) milliseconds")
            labelOne.text = "time for encryption is \(timeInMiliSec2 - timeInMiliSec) milliseconds"
            text = aes.toHexString()
            
            
        } catch {
            print(error)
            // failed
        }
        
        //1048576 for 1MB
        //2097152 for 2MB
        //4194304 for 4MB
        //100 for 100 bytes
        //1024 for 1000 bytes
        //102400 for 100k bytes
        //524288 for 500k bytes
        
        let alert = UIAlertController(title: "TEST", message: text, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //    func encryptedText() -> String {
    //        let timeInMiliSecDate = Date()
    //        let timeInMiliSec = Int (timeInMiliSecDate.timeIntervalSince1970 * 1000)
    //        print("encryption starts at \(timeInMiliSec) milliseconds")
    //        let x = AES256CBC.encryptString(stringFile, password: "12345678901234567890123456789012")!
    //        print("encryption ends at \(timeInMiliSec) milliseconds")
    //        let timeInMiliSecDate2 = Date()
    //        let timeInMiliSec2 = Int (timeInMiliSecDate2.timeIntervalSince1970 * 1000)
    //        print(timeInMiliSec2)
    //        labelOne.text = "time for encryption is \(timeInMiliSec2 - timeInMiliSec) milliseconds"
    //        print("time for encryption is \(timeInMiliSec2 - timeInMiliSec) milliseconds")
    //        return x
    //    }
    //
    //    func decryptedText() -> String {
    //        let timeInMiliSecDate = Date()
    //        let timeInMiliSec = Int (timeInMiliSecDate.timeIntervalSince1970 * 1000)
    //        print(timeInMiliSec)
    //        print("decryption starts at \(timeInMiliSec) milliseconds")
    //        let x = AES256CBC.decryptString(encryptedText(), password: "12345678901234567890123456789012")!
    //        print("decryption ends at \(timeInMiliSec) milliseconds")
    //        let timeInMiliSecDate2 = Date()
    //        let timeInMiliSec2 = Int (timeInMiliSecDate2.timeIntervalSince1970 * 1000)
    //        print(timeInMiliSec2)
    //        labelTwo.text = "time for decryption is \(timeInMiliSec2 - timeInMiliSec) milliseconds"
    //        print("time for decryption is \(timeInMiliSec2 - timeInMiliSec) milliseconds")
    //
    //        return x
    //    }
    
}

