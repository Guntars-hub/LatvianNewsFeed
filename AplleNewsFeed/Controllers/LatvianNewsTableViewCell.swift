//
//  LatvianNewsTableViewCell.swift
//  Latvian News Feed
//
//  Created by guntars.grants on 14/02/2021.
//

import UIKit

class LatvianNewsTableViewCell: UITableViewCell {
    var items: Item?

    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var feedTitleLabel: UILabel!
    
    func setUI(with: Item) {
         
        feedTitleLabel.text! = "Name: " + with.title
        
        
        if let items = items {
        ImageController.getImage(for: with.image ?? "") { (image) in
            self.feedImageView.image = image
        }
        } else {
            print("feed image is nil")
        }
    }
}

