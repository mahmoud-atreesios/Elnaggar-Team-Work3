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
    
    var isLblExpanded: Bool = false
    var tableView: UITableView?
    override func awakeFromNib() {
        super.awakeFromNib()
        courseDescriptionLabel.numberOfLines = 2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillButton(buttons: [UIButton]) {
        for index in 0...buttons.count - 1 {
            buttons[index].setImage(UIImage(systemName: "star.fill"), for: .normal)
        }
    }
    
    func unFillButton(buttons: [UIButton]) {
        for index in 0...buttons.count - 1 {
            buttons[index].setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
    
    func handleReadMoreButn() {
        self.isLblExpanded.toggle()
        if isLblExpanded{
            courseDescriptionLabel.numberOfLines = 0
        } else {
            courseDescriptionLabel.numberOfLines = 2
        }
        guard let tableView = tableView else {
            return
        }
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    @IBAction func ratingStarsTapped(_ sender: UIButton) {
        print(sender.tag)
    }
    @IBAction func starOneBtn(_ sender: Any) {
        fillButton(buttons: [firstStar])
        unFillButton(buttons: [secoundStar, thirdStar, fourthStar, fifthStar])
    }
    
    @IBAction func starTwoBtn(_ sender: Any) {
        fillButton(buttons: [firstStar, secoundStar])
        unFillButton(buttons: [thirdStar, fourthStar, fifthStar])
    }
    
    @IBAction func starThreeBtn(_ sender: Any) {
        fillButton(buttons: [firstStar, secoundStar, thirdStar])
        unFillButton(buttons: [fourthStar, fifthStar])
    }
    
    @IBAction func starFourBtn(_ sender: Any) {
        fillButton(buttons: [firstStar, secoundStar, thirdStar, fourthStar])
        unFillButton(buttons: [fifthStar])
    }
    
    @IBAction func starFiveBtn(_ sender: Any) {
        fillButton(buttons: [firstStar, secoundStar, thirdStar, fourthStar, fifthStar])
       
    }
    
    @IBAction func readMoreBtn(_ sender: Any) {
        handleReadMoreButn()
    }
    
}


