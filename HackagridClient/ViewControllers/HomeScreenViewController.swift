//
//  HomeScreenViewController.swift
//  HackagridClient
//
//  Created by Ian Manor on 14/07/19.
//  Copyright © 2019 Ian Manor. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    @IBOutlet weak var objectiveTextField: UITextField!
    
    override func viewDidLoad() {
        objectiveTextField!.layer.borderWidth = 2
        objectiveTextField!.layer.borderColor = UIColor.init(red:82, green:255, blue:146, alpha:1.0).cgColor
    }
    
    // TODO: Don't allow empty objective
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objective = objectiveTextField.text
        print(objective as Any)
    }
}
