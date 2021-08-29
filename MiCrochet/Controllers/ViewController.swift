//
//  ViewController.swift
//  MiCrochet
//
//  Created by Vivian Angela on 30/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapToContinue(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToHomePage", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(false, animated: animated)
//        super.viewWillDisappear(animated)
//    }

}

