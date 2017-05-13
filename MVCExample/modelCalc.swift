//
//  modelCalc.swift
//  MVCExample
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

class Results {
    var price:String
    var discount:String
    
    
    init(_ price:String = "",
         _ discount:String = "") {
        self.price = price
        self.discount = discount
    }
    
    
    
    static let shared: Results = Results()
}
