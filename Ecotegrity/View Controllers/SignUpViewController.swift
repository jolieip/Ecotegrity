//
//  SignUpViewController.swift
//  Ecotegrity
//
//  Created by Jolie Ip Ying See on 16/07/2020.
//  Copyright © 2020 ecotegrity. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements() {
        
        //Hide the errorlabel
        errorLabel.alpha=0
        
        //style the elements
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
            }

    //check the fields and validate that the data is correct if everything is correct this method returns nil else return error message as string
    func validateFields() -> String? {
        
        //check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields."
        }
        
        //check if password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            //password isn't secure enough
            return "Please make sure your password is atleast 8 characters long, contains a special character, and a number."
        }
        
        //add check if email is secured (first add method to utilities then check here
        
        return nil
    }
    
    @IBAction func signUptapped(_ sender: Any) {
        
        //validate the fields
        let error = validateFields()
        if error != nil {
            //somethign wrong with the fields, show error message
            showError(error!)
        }
        else {
            //create the user
            Auth.auth().createUser(withEmail: "", password: "") { (result, err) in
                //check for errors
                if err != nil{
                    //there was an error creating the user
                    self.showError("Error Creating User")
                }
                else {
                    //user created succesfully so store first name and last name
                    
                }
            }
            //transition to the home screen
        }
        
        
    }
    
    func showError(_ message:String){
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
}
