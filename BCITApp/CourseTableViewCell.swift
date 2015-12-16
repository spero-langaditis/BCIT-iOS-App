//
//  CourseTableViewCell.swift
//  BCITApp
//
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet weak var courseTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
