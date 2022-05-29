//
//  CoursesData.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import Foundation

struct Course {
    let id = UUID()
    var imageName: String
    var title: String
    var origin: String
    var rating: Double
    var category: String
}

let courses = [
    Course(imageName: "1", title: "Investment and Portfolio Management", origin: "University of Geneva", rating: 4.9, category: "Invest"),
    Course(imageName: "2", title: "Introduction to Digital Trading Futures", origin: "University of Bocconi", rating: 4.3, category: "Money"),
    Course(imageName: "3", title: "The Laravel Php Framework For Beginners", origin: "University of Paris", rating: 5.0, category: "Code"),
    Course(imageName: "4", title: "The UX / UI Design Basics", origin: "EvenSchool", rating: 4.9, category: "Design"),
    Course(imageName: "5", title: "How To Build A Stratup For Dummies", origin: "Hack4demy", rating: 4.2, category: "Entrepreneurship"),
]
