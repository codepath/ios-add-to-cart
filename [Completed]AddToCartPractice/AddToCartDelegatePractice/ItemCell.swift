//
//  ItemCell.swift
//  AddToCartDelegatePractice
//
//  Created by Memo on 12/15/21.
//

import UIKit

protocol CartDelegate {
    func updateCart(item: String)
}

class ItemCell: UITableViewCell {

    
    var delegate: CartDelegate!
    
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
        delegate.updateCart(item: itemLabel.text!)
    
    }
    
}
