//
//  RegisterPageViewController.swift
//  UserLoginAndRegistration
//
//  Created by Egor Lord on 7/24/17.
//  Copyright © 2017 Egor Lord. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text!
        let userPassword = userPasswordTextField.text!
        let userrepeatPassword = repeatPasswordTextField.text!
        
        // Check for empty fields
        if(userEmail.isEmpty || userPassword.isEmpty || userrepeatPassword.isEmpty)
        {
            // Display alert message
            displayMyAlertMessage(userMessage: "All fields are required")
            return
        }
        
        // Check if password match
        if(userPassword != userrepeatPassword)
        {
            displayMyAlertMessage(userMessage: "Passwords do no match")
            return
        }
        // Store data
        
        // Display alert message with confirmation
        let myAlert =  UIAlertController(title: "Alert", message: "Registration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) { action in
            self.dismiss(animated: true, completion: nil)
//            self.dissmissViewControllerAnimated(true, completion: nil)
        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func displayMyAlertMessage(userMessage: String)
    {
        let myAlert =  UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
}
