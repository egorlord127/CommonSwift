//
//  ViewController.swift
//  SideOutMenuwithNav
//
//  Created by Egor Lord on 7/29/17.
//  Copyright © 2017 Egor Lord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCon: NSLayoutConstraint!
    @IBOutlet weak var leftContainer: UIView!
    var showingMenu: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        leftCon.constant = -leftContainer.frame.size.width
//        self.view.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMenu(_ sender: Any) {
        
        if(leftCon.constant != 0)
        {
            leftCon.constant = 0
            UIView.animate(withDuration: 0.5, animations: {self.view.layoutIfNeeded()})
        } else {
            leftCon.constant = -leftContainer.frame.size.width
            UIView.animate(withDuration: 0.5, animations: {self.view.layoutIfNeeded()})
        }
    }

}

