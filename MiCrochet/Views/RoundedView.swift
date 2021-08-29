//
//  RoundedView.swift
//  MiCrochet
//
//  Created by Vivian Angela on 03/05/21.
//

import UIKit

class RoundedView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
