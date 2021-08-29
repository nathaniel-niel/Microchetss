//
//  InstructionsViewController.swift
//  MiCrochet
//
//  Created by Vivian Angela on 03/05/21.
//

import UIKit

class InstructionsViewController: UIViewController {
    
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var heartImage: UIImageView!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    var heartArray: [HeartModel] = []
    
    private let scrollView = UIScrollView()
    
    private let pageControl: UIPageControl = {
            let pageControl = UIPageControl()
            pageControl.numberOfPages = 3
            pageControl.backgroundColor =  #colorLiteral(red: 0.9956633449, green: 0.9165876508, blue: 0.9117155075, alpha: 1)
            return pageControl
    } ()


    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        roundedView()
        generateHeart()
    
        pageControl.addTarget(self, action: #selector(pageControlDidChange), for: .valueChanged)
        scrollView.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        moveToFront()
        
        roundLabel.text = heartArray[0].heartRound
        heartImage.image = UIImage(named: heartArray[0].heartImage)
        instructionsLabel.text = heartArray[0].heartInstruction
        
        view.addSubview(scrollView)
        view.addSubview(pageControl)

    }
    
    func generateHeart() {
        heartArray.append(HeartModel(heartRound: "Round 1", heartImage: "round1", heartInstruction: "Start with a magic ring.\n\nCh 2.\nInto the magic ring, make 3tr, 4dc, tr, 4dc, 3tr.\nCh2, and sl st into the mr.\nPull the yarn end to close the magic ring.\n\nYeay, you have done the mini crochets heart.\nNote: You can stop here if you want."))
        heartArray.append(HeartModel(heartRound: "Round 2", heartImage: "round2", heartInstruction: "Continue in joined rounds, working into the sts of the previous round.\n\nSc in ch-2 space, (2hdc & 1dc) in next st, 3dc in next st, 2dc in next st, dc in next 4 sts, (dc, tr, dc) in next st, dc in next 4 sts, 2dc in next st, 3dc in next st, (1dc & 2hdc) in next st, sc in ch-2 space, sl st in sl st from the previous round.\n\nYeay, you have done the medium-size heart.\nNote: You can stop here if you want"))
        heartArray.append(HeartModel(heartRound: "Round 3", heartImage: "round3", heartInstruction: "Continue working in the round.\n\nSc in first 2 sts.\n(2sc in the next st, 1sc in the next st) three times, sc in next 6 sts, (sc, hdc, sc) in next st, sc in next 6 sts,(1sc in the next st, 2sc in the next st) three times, sc in next 2 sts.\nCut yarn and join with an invisible join. Tighten up the mr one more time, and weave in the ends.\n\nYeay, you have done the large crochets heart."))
    }
    
    func roundedView() {
        heartImage.layer.cornerRadius = 10
    }
    
    func moveToFront() {
        roundLabel.layer.zPosition = 3
        heartImage.layer.zPosition = 3
        instructionsLabel.layer.zPosition = 3
    }
    
    @objc private func pageControlDidChange(_ sender: UIPageControl){
        let current = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.size.width, y: 0), animated: true)
        
        roundLabel.text = heartArray[pageControl.currentPage].heartRound
        heartImage.image = UIImage(named: heartArray[pageControl.currentPage].heartImage)
        instructionsLabel.text = heartArray[pageControl.currentPage].heartInstruction
    
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x: 0, y: view.frame.size.height-100, width: view.frame.size.width, height: 100)
        scrollView.frame = CGRect(x: 0, y: 135, width: view.frame.size.width, height: view.frame.size.height-235)
        scrollView.layer.cornerRadius = 20

        if scrollView.subviews.count == 2 {
            configureScrollView()
        }
    }
    
    private func configureScrollView(){
        scrollView.contentSize = CGSize(width: view.frame.size.width*3, height: scrollView.frame.size.height-150)
        scrollView.isPagingEnabled = true

        for x in 0..<3{
            let page = UIView(frame: CGRect(x: CGFloat(x) * view.frame.size.width, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height))
            scrollView.addSubview(page)
        }
    }
    

}

extension InstructionsViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(390))
        roundLabel.text = heartArray[pageControl.currentPage].heartRound
        heartImage.image = UIImage(named: heartArray[pageControl.currentPage].heartImage)
        instructionsLabel.text = heartArray[pageControl.currentPage].heartInstruction
    }
}
