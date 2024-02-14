//
//  WelcomeViewController.swift
//  AbouyMe2.0
//
//  Created by Aleksey Konchyts on 13.02.24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var personLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user.userName)!"
        personLabel.text = "My name is \(user.person.personName) \(user.person.personSurname)"
    }

}
