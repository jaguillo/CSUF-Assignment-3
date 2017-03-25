//
//  modelCalc.swift
//  MVCExample
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

class Student {
    var name:String
    var letterGrade:Character
    var isEnrolled:Bool{
        get{
            return true
        }
    }
    
    init(_ name:String = "John Doe",
         _ letterGrade:Character = "A") {
        self.name = name
        self.letterGrade = letterGrade
    }
    
    private func debug() {
        print("Name: ", self.name)
        print("Grade:", self.letterGrade)
    }
    
    static let shared: Student = Student()
}
