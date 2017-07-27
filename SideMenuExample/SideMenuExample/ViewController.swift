//
//  ViewController.swift
//  SideMenuExample
//
//  Created by Egor Lord on 7/26/17.
//  Copyright © 2017 Egor Lord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static var fromStoryboard: ViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

