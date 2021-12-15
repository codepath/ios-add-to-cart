//
//  ViewController.swift
//  AddToCartDelegatePractice
//
//  Created by Memo on 12/15/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cartCount: UILabel!
    @IBOutlet weak var cartItemsText: UILabel!
    
    
    let items = ["Book", "Movie", "Spoon", "Bike", "Basketball"]
    var cart = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        
        let item = items[indexPath.row]
        cell.itemLabel.text = item
        
        return cell
    }
    
    
    
}

