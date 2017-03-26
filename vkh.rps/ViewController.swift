//
//  ViewController.swift
//  vkh.rps
//
//  Created by mbair on 26.03.17.
//  Copyright © 2017 mbair. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let loginButton = FBSDKLoginButton()
        loginButton.center=self.view.center
        self.view.addSubview(loginButton)
        loginButton.delegate=self
        
    }
    
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print ("Èrror")
            return
        }
        print("Ök")
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print ("good")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

