//
//  ViewController.swift
//  AbouyMe2.0
//
//  Created by Aleksey Konchyts on 13.02.24.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let user = User.getUser()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach{ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let personVC = navigationVC.topViewController as? PersonViewController
                personVC?.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Wrong User Name or Password",
                andMessage: "Try again"
            )
            return false
        }
        return true
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 1
        ? showAlert(withTitle: "Wrong password", andMessage: "Your password is \(user.password)")
        : showAlert(withTitle: "Wrong User Name", andMessage: "Your user name is \(user.userName)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

