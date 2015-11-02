//
//  ViewController.swift
//  Fritoysabri
//
//  Created by Nicolas Bukstein on 2/11/15.
//  Copyright © 2015 Nicolas Bukstein. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPlayAudioButton()
        
    }
    
    func createPlayAudioButton() {
        let playAudioButton = UIButton.init(type: UIButtonType.System)
        playAudioButton.backgroundColor = UIColor.blueColor()
        playAudioButton.frame = CGRect.init(x: 0, y: 0, width: 180, height: 40)
        playAudioButton.center = view.center
        playAudioButton.setTitle("Reproducir", forState: UIControlState.Normal)
        playAudioButton.addTarget(self, action:Selector("reproducirAudio"), forControlEvents: UIControlEvents.TouchUpInside)
        playAudioButton.alpha = 0.6
        playAudioButton.layer.cornerRadius = 10
        view.addSubview(playAudioButton)
    }
    
    func reproducirAudio(){
        player = nil
        do {
            let path = "/Users/buky/Documents/fritoysabri/Fritoysabri/Fritoysabri/f7157ff6897dbca7aed808d5637ab5f0.mp3"
            player = try AVAudioPlayer.init(contentsOfURL: NSURL.init(fileURLWithPath: path))
            player.play()
        }
        catch {
            //alert
        }
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

