//
//  AlertController+UIViewControlller.swift
//  SignInMVVMUnitTest
//
//  Created by Preet Pambhar on 2024-05-28.
//

import Foundation
import UIKit

extension UIViewController{
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
