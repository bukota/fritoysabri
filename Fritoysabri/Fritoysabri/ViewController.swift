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
        let loginButton = FBSDKLoginButton.init()
        loginButton.center = self.view.center;
        self.view.addSubview(loginButton)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

