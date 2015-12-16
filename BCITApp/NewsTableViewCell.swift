//
//  NewsTableViewCell.swift
//  BCITApp
//
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var message: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
