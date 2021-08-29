//
//  HeartViewController.swift
//  MiCrochet
//
//  Created by Vivian Angela on 03/05/21.
//

import UIKit

class HeartViewController: UIViewController {

    @IBOutlet weak var heartImage: UIImageView!
    
    @IBAction func nextBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToInstructions", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedView()
    }
    
    func roundedView() {
        heartImage.layer.cornerRadius = 10
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        navigationController?.navigationBar.shadowImage = UIImage()
//        navigationController?.navigationBar.isTranslucent = true
//        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.4419763088, green: 0.3205834627, blue: 0.3619824052, alpha: 1)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
