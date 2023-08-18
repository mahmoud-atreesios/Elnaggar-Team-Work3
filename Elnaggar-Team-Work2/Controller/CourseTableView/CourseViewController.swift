//
//  CourseViewController.swift
//  Elnaggar-Team-Work2
//
//  Created by Mohamed Salah on 18/08/2023.
//

import UIKit

class CourseViewController: UIViewController {
    let courseDataArray = Data().coursesArray
    @IBOutlet weak var coursesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        coursesTableView.register(UINib(nibName: "CourseTableViewCell", bundle: nil), forCellReuseIdentifier: "CourseTableViewCell")
    }
    
    
}
extension CourseViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        courseDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseTableViewCell", for: indexPath) as! CourseTableViewCell
        cell.courseImage.image = UIImage(named: courseDataArray[indexPath.row].image)
        cell.courseNameLabel.text = courseDataArray[indexPath.row].name
        cell.courseDescriptionLabel.text = courseDataArray[indexPath.row].description
        return cell
    }
}

