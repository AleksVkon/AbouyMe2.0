//
//  WelcomeViewController.swift
//  AbouyMe2.0
//
//  Created by Aleksey Konchyts on 13.02.24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(userName ?? "")!"
    }

}
