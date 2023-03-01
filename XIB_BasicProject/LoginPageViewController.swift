//
//  LoginPageViewController.swift
//  XIB_BasicProject
//
//  Created by Guru Mahan on 24/02/23.
//

import UIKit

class LoginPageViewController: UIViewController {

    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var Login: UIButton!
    
    
    @IBOutlet weak var signUp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTxt.placeholder = "Enter Username"
        emailTxt.placeholder = "Enter Email"
        passwordTxt.placeholder = "Enter Password"
        Login.setTitle("Login", for: .normal)
        Login.backgroundColor = .blue
        Login.setTitleColor(.white, for: .normal)
        signUp.setTitle("SignUp?", for: .normal)
        signUp.backgroundColor = .blue
        signUp.setTitleColor(.white, for: .normal)
        Login.layer.cornerRadius = 10
        signUp.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    func validation(){
        
        if !(userNameTxt.text?.isEmpty ?? false)  && !(emailTxt.text?.isEmpty ?? false)  && !(passwordTxt.text?.isEmpty ?? false) {
            
            let userName = UserDefaults.standard.string(forKey: "userName")
            let email = UserDefaults.standard.string(forKey: "email")
            let password = UserDefaults.standard.string(forKey: "password")
            if userName == userNameTxt.text && email == emailTxt.text  && password == passwordTxt.text {
                UserDefaults.standard.set(true, forKey: "login")
                let HomeVC = HomePageViewController()
                self.navigationController?.pushViewController(HomeVC, animated: true)
            }else{
                disPlayAlertMessage(userMessage: "Enter registered validation")
            }
            
            
        }
    }
    
    @IBAction func butAction(_ sender: Any) {
        validation()
    }
    
    @IBAction func SignUpButtonAction(_ sender: Any) {
        let registerVC = RegisterPageViewController()
        self.navigationController?.pushViewController(registerVC, animated: true)
        
    }
    func disPlayAlertMessage(userMessage: String){
        let Alert = UIAlertController(title: "!Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert)

        Alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: { (action: UIAlertAction!) in
          print("Handle Ok logic here")
          }))
        self.present(Alert, animated: true, completion: nil)
    }
}

