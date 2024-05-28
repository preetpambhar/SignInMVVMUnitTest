//
//  LoginViewController.swift
//  SignInMVVMUnitTest
//
//  Created by Preet Pambhar on 2024-05-27.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    private let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton){
        let response = viewModel.validateLogin(emailField.text, password: passwordField.text)
        showAlert(response.rawValue)
    }

    
    func showAlert(_ message: String){
        let alertController = UIAlertController(
            title: "Alert",
            message: message,
            preferredStyle: .alert
        )
        let ok  = UIAlertAction(title: "OKay", style: .default)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
}
