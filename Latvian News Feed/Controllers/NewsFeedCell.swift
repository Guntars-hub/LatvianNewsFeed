//
//  NewsFeedCell.swift
//  Latvian News Feed
//
//  Created by guntars.grants on 14/02/2021.
//

class PokeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var subtypeLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    
    func setUI(with: Pokemon) {
         
        nameLabel.text = "Name: " + with.name
        numberLabel.text = "Card Value: " + with.number
        if let subtype = with.subtype{
        subtypeLabel.text = "Subtype: " + subtype
        }
        
        if let supertype = with.supertype{
        supertypeLabel.text = "Supertype: " + supertype
            if with.supertype == "Trainer" {
                contentView.backgroundColor = .systemGreen
            } else {
                contentView.backgroundColor = .orange
            }
        }
        
        ImageController.getImage(for: with.imageUrl ?? "", completion: { image in
            self.pokeyImageView.image = image
        })
    }
}
