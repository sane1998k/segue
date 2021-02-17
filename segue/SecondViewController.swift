//
//  SecondViewController.swift
//  segue
//
//  Created by alex on 17.02.2021.
//

import UIKit

class SecondViewController: UIViewController {
    var login: String!
    @IBOutlet weak var hiLBL: UILabel! {
        didSet {
            hiLBL.text = login
        }
    }
    
    @IBAction func exitBTN (_ sender: UIButton) {
        performSegue(withIdentifier: "unwind", sender: nil)
    }
    

}
