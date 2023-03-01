//
//  RegisterPageViewController.swift
//  XIB_POC
//
//  Created by Guru Mahan on 24/02/23.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userNameTxtField: UITextField!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
 
    @IBOutlet weak var emailTxtField: UITextField!
     
    @IBOutlet weak var signUpBtn: UIButton!
    override func viewDidLoad() {
           super.viewDidLoad()
           userNameTxtField.placeholder = "Enter UserName"
           emailTxtField.placeholder = "Enter Email"
           passwordTxtField.placeholder = "Enter password"
           confirmPassword.placeholder = "Enter confirmPassword"
        signUpBtn.setTitle("SignUp", for: .normal)
        
}
    func validation(){
        if !(userNameTxtField.text?.isEmpty ?? true) && !(emailTxtField.text?.isEmpty ?? false) && !(passwordTxtField.text?.isEmpty ?? false) && !(confirmPassword.text?.isEmpty ?? false) {
            UserDefaults.standard.set(userNameTxtField.text, forKey: "userName")
            UserDefaults.standard.set(emailTxtField.text, forKey: "email")
            UserDefaults.standard.set(passwordTxtField.text, forKey: "password")
            self.navigationController?.popViewController(animated: true)
        }else{
          disPlayAlertMessage(userMessage:"Enter All Text")
        }
    }
    func disPlayAlertMessage(userMessage: String){
        let Alert = UIAlertController(title: "!Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        
        Alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Ok logic here")
        }))
        self.present(Alert, animated: true)
    }
    @IBAction func SignUpAction(_ sender: Any) {
        validation()
    }
    

}
