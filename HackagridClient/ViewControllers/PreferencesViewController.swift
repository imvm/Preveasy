//
//  PreferencesViewController.swift
//  HackagridClient
//
//  Created by Ian Manor on 14/07/19.
//  Copyright © 2019 Ian Manor. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseFirstOption(_ sender: Any) {
        self.performSegue(withIdentifier: "toSimulatorSegue", sender: "Option 2")
    }
    
    @IBAction func chooseSecondOption(_ sender: Any) {
        self.performSegue(withIdentifier: "toSimulatorSegue", sender: "Option 2")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let option = sender as! String
        print(option)
    }

}
