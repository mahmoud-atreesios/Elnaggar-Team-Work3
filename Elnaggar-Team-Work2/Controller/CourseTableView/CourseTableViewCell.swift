//
//  CourseTableViewCell.swift
//  Elnaggar-Team-Work2
//
//  Created by Mohamed Salah on 18/08/2023.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var courseNameLabel: UILabel!
    @IBOutlet weak var firstStar: UIButton!
    @IBOutlet weak var secoundStar: UIButton!
    @IBOutlet weak var thirdStar: UIButton!
    @IBOutlet weak var fourthStar: UIButton!
    @IBOutlet weak var fifthStar: UIButton!
    @IBOutlet weak var courseDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func ratingStarsTapped(_ sender: UIButton) {
        print(sender.tag)
    }
    
}


