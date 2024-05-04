//
//  PostTableViewCell.swift
//  S8ChurivantiP1
//
//  Created by Mac19 on 4/05/24.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    // Referenciando nombre del Post de la imagen
    @IBOutlet var postImage: UIImageView!
    
    // Referenciando el nombre del cat
    @IBOutlet var nameCat: UILabel!
    
    // Referenciando la raza del cat
    @IBOutlet var razaCat: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
