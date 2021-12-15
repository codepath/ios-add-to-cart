//
//  ItemCell.swift
//  AddToCartDelegatePractice
//
//  Created by Memo on 12/15/21.
//

import UIKit

class ItemCell: UITableViewCell {

    
    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // TODO: Update cart in the viewController
    @IBAction func addToCart(_ sender: Any) {
    
    
    }
    
}
