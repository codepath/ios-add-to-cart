//
//  ViewController.swift
//  AddToCartDelegatePractice
//
//  Created by Memo on 12/15/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cartCount: UILabel!
    @IBOutlet weak var cartItemsText: UILabel!
    
    
    let items = ["Book", "Movie", "Spoon", "Bike", "Basketball"]
    var cart = [String]()
    var currentCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        
        let item = items[indexPath.row]
        cell.itemLabel.text = item
        
        cell.delegate = self
        
        return cell
    }
    
}

extension ViewController: CartDelegate  {
    
    func updateCart(item: String) {
        cart.append(item)
        currentCount += 1
        cartCount.text = String(currentCount)
        cartItemsText.text = cart.description
    }
    

}

