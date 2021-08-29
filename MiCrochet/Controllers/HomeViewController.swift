//
//  HomeViewController.swift
//  MiCrochet
//
//  Created by Vivian Angela on 01/05/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func basicBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToBasicPage", sender: self)
    }

    @IBAction func heartBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToHeartPage", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(performSegueTest), userInfo: nil, repeats: false)

        setUpBtn()
        
//        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    func setUpBtn() {
        let btn = UIButton()
        btn.clipsToBounds = true
    }
    
//    @objc func performSegueTest(){
//        self.performSegue(withIdentifier: "moveToBasicPage", sender: self)
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
