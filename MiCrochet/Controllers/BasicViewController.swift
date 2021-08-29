//
//  BasicViewController.swift
//  MiCrochet
//
//  Created by Vivian Angela on 03/05/21.
//

import UIKit

class BasicViewController: UIViewController {

   
    @IBOutlet weak var stitchesTable: UITableView!
    
    var stitchArray: [StitchModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateStitch()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.9956633449, green: 0.9165876508, blue: 0.9117155075, alpha: 1)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.4419763088, green: 0.3205834627, blue: 0.3619824052, alpha: 1)
    }
    
    func generateStitch() {
        stitchArray.append(StitchModel(stitchName: "Stitch(es) - st(s)", stitchImage: "sts"))
        stitchArray.append(StitchModel(stitchName: "Chain - ch", stitchImage: "ch"))
        stitchArray.append(StitchModel(stitchName: "Magic Ring - mr", stitchImage: "mrkecil"))
        stitchArray.append(StitchModel(stitchName: "Slip Stitch - sl st", stitchImage: "slst"))
        stitchArray.append(StitchModel(stitchName: "Single Crochet - sc", stitchImage: "sckecil"))
        stitchArray.append(StitchModel(stitchName: "Double Crochet - dc", stitchImage: "dckecil"))
        stitchArray.append(StitchModel(stitchName: "Half Double Crochet - hdc", stitchImage: "hdckecil"))
        
        
//        stitchArray.append(StitchModel(stitchName: "Stitch(es) - st(s)", stitchImage: ["sts"]))
//        stitchArray.append(StitchModel(stitchName: "Chain - ch", stitchImage: ["ch"]))
//        stitchArray.append(StitchModel(stitchName: "Magic Ring - mr", stitchImage: ["mr1", "mr2", "mr3", "mr4"]))
//        stitchArray.append(StitchModel(stitchName: "Slip Stitch - sl st", stitchImage: ["slst"]))
//        stitchArray.append(StitchModel(stitchName: "Single Crochet - sc", stitchImage: ["sc1", "sc2", "sc3", "sc4"]))
//        stitchArray.append(StitchModel(stitchName: "Double Crochet - dc", stitchImage: ["dc1", "dc2", "dc3", "dc4"]))
//        stitchArray.append(StitchModel(stitchName: "Half Double Crochet - hdc", stitchImage: ["hdc1", "hdc2", "hdc3"]))
    }
    
    //    func backBtn() {
    //        navigationItem.backBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
    //    }
        
//        @objc func addTapped() {
//            
//        }
}

extension BasicViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 220.0
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stitchesCellIdentifier", for: indexPath) as? StitchCell
        
        cell?.stitchLabel.text = stitchArray[indexPath.row].stitchName
        cell?.stitchImage.image = UIImage(named: stitchArray[indexPath.row].stitchImage)
        
        
        return cell!
    }
    
}
