//
//  Course.swift
//  Elnaggar-Team-Work2
//
//  Created by Mohamed Salah on 18/08/2023.
//


import Foundation

struct Data {
    let coursesArray = [
        Course(name: "Salah", rating: 5, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", image: "1"),
        Course(name: "Mahmoud", rating: 4.5, description: "His shoulders are always above", image: "2"),
        Course(name: "Hamdy", rating: 4.5, description: "he is currently Sick", image: "3"),
        Course(name: "Manaar", rating: 4.0, description: "She doesnt Give Up", image: "4"),
        Course(name: "Ahmed-Elnaggar", rating: 5.0, description: "Black Market Seller", image: "5")
    ]
}
struct Course {
    let name: String
    var rating: Float
    let description: String
    let image: String
}
