//
//  ViewController.swift
//  segue
//
//  Created by alex on 17.02.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var svcLBL: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        guard let login = loginTF.text else { return }
        dvc.login = "Hi, \(login)"
    }
    @IBAction func send (_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   @IBAction func unwindSegueToMain(segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SecondViewController else { return }
        svcLBL.text = svc.login
    }
    


}

