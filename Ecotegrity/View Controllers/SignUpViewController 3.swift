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
import FirebaseFirestore

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
            
            //Create cleaned versions of the data
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //create the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                //check for errors
                if err != nil{
                    //there was an error creating the user
                    self.showError("Error Creating User")
                }
                else {
                    //user created succesfully so store first name and last name
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data: ["firstname" : firstName, "lastname" : lastName,"uid" : result!.user.uid]) { (error) in
                        if error != nil {
                            //Show error message
                            self.showError("Error saving user data")
                        }
                    }
                    //transition to the home screen
                    self.transitionToHome()
                }
            }
            
        }
        
        
    }
    
    func showError(_ message:String){
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    func transitionToHome(){
        
        
    }
    
}
