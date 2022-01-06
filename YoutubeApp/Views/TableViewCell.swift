//
//  TableViewCell.swift
//  YoutubeApp
//
//  Created by Kaung Htet Hein on 11/5/21.
//

import UIKit
import Kingfisher

class TableViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var thumbnailImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        self.thumbnailImage.layer.cornerRadius = 10
//        thumbnailImage.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func commonInit (title: String, ImageUrl: String) {
        titleLabel.text = title
        DispatchQueue.main.async {
            let url = URL(string: ImageUrl)
            self.thumbnailImage.kf.setImage(with: url)
        }
        
    }
    
}
