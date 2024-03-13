//
//  LoginViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var viewModel: LoginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        guard let email = emailField.text, let password = passwordField.text else {
            print("Please Enter Your Email and Password")
            return
        }
        viewModel.login(email: email, password: password)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func  goToHomeViewController() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        present(controller, animated: true, completion: nil)
    }
}

//MARK: extension LoginViewController
extension LoginViewController: LoginViewDelegate {
    func loginSuccess() {
        goToHomeViewController()
    }
    
    func loginFailure() {
        print("Error in email or password !!")
    }
}
