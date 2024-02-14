//
//  PersonViewController.swift
//  AbouyMe2.0
//
//  Created by Aleksey Konchyts on 13.02.24.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var personFullNameLabel: UILabel!
    @IBOutlet var personNameLabel: UILabel!
    @IBOutlet var perconSurnameLabel: UILabel!
    @IBOutlet var personHobbyLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personFullNameLabel.text = "\(user.person.personName) \(user.person.personSurname)"
        personNameLabel.text = "\(user.person.personName)"
        perconSurnameLabel.text = "\(user.person.personSurname)"
        personHobbyLabel.text = "\(user.person.personHobby)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let BioViewController = segue.destination as? BioViewController
        BioViewController?.user = user
    }
}
