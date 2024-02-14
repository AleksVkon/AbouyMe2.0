//
//  BioViewController.swift
//  AbouyMe2.0
//
//  Created by Aleksey Konchyts on 13.02.24.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userBioLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "\(user.person.personName) \(user.person.personSurname)"
        userBioLabel.text = "\(user.person.personBio)"
    }
}
