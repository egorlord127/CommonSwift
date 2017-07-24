//
//  ViewController.swift
//  UserLoginAndRegistration
//
//  Created by Egor Lord on 7/24/17.
//  Copyright © 2017 Egor Lord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
//        self.shouldPerformSegue(withIdentifier: "loginView", sender: self)
        self.performSegue(withIdentifier: "loginView", sender: self)
    }
}

