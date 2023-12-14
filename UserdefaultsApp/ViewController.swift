//
//  ViewController.swift
//  UserdefaultsApp
//
//  Created by Fuat Bolat on 14.12.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTexField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String{
            nameLabel.text = "Name\(newName)"
        }
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = "Birthday:\(newBirthday)"
        }
        
    }

    @IBAction func savePressed(_ sender: UIButton) {
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.setValue(birthdayTexField.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTexField.text!)"
        
    }
    
    @IBAction func deletePressed(_ sender: UIButton) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String{
            UserDefaults.standard.removeObject(forKey: "name")
        }
        if storedBirthday is String{
            UserDefaults.standard.removeObject(forKey: "birthday")
        }
        nameLabel.text = "Name:"
        birthdayLabel.text = "Birthday"
        
    }
    
}

