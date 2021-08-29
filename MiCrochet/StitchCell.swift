//
//  StitchCell.swift
//  MiCrochet
//
//  Created by Vivian Angela on 03/05/21.
//

import UIKit

class StitchCell: UITableViewCell {

    @IBOutlet weak var stitchLabel: UILabel!
    @IBOutlet weak var stitchImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
