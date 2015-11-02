//
//  ViewController.swift
//  Fritoysabri
//
//  Created by Nicolas Bukstein on 2/11/15.
//  Copyright © 2015 Nicolas Bukstein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = UIButton.init(type: UIButtonType.Custom)
        loginButton.backgroundColor = UIColor.blueColor()
        loginButton.frame = CGRect.init(x: 0, y: 0, width: 180, height: 40)
        loginButton.center = view.center
        loginButton.setTitle("Play ", forState: UIControlState.Normal)
        
        loginButton.addTarget(self, action:Selector("loginButton"), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(loginButton)
        
    }
    
    func createPlayAudioButton() {
        
    }
    
    
    func createFacebookLoginButton () {
        let loginButton = UIButton.init(type: UIButtonType.Custom)
        loginButton.backgroundColor = UIColor.blueColor()
        loginButton.frame = CGRect.init(x: 0, y: 0, width: 180, height: 40)
        loginButton.center = view.center
        loginButton.setTitle("Login with facebook!", forState: UIControlState.Normal)
        
        loginButton.addTarget(self, action:Selector("loginButton"), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(loginButton)
    }

    func loginButton() {
        let loginManager = FBSDKLoginManager.init()
        loginManager.logInWithReadPermissions(["public_profile"], fromViewController: self) { (result :FBSDKLoginManagerLoginResult!,error: NSError!) -> Void in
            if (error != nil) {
                print("Error")
            }else if result.isCancelled{
                print("Canceled")
            }else{
                print("token:\(result.token.tokenString)")
            }
        }
    }

}

