//
//  CalculatorViewController.swift
//  MVCExample
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var dollarsOff: UITextField!
    @IBOutlet weak var discount: UITextField!
    @IBOutlet weak var otherDiscount: UITextField!
    @IBOutlet weak var tax: UITextField!
    
    @IBOutlet weak var originalPrice: UILabel!
    @IBOutlet weak var discountPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //make swipe gestures
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        view.addGestureRecognizer(swipeLeft)
        // handleSwipe is a function down below ....
        // #selector() selects and executes that function
        
        originalPrice.isHidden=true
        discountPrice.isHidden=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculatePrice(_ sender: UIButton) {
        
        let priceItem = Double(price.text!)
        let amountOff = Double(dollarsOff.text!)
        let discountPercentage = Double(discount.text!)
        let otherDiscountPercentage = Double(otherDiscount.text!)
        let taxPercentage = Double(tax.text!)
        
        
        
        let discount_amount = Double(priceItem!*(discountPercentage!/100))
        let other_discount = Double(priceItem!*(otherDiscountPercentage!/100))
        let tax_amount = Double(priceItem!*(taxPercentage!/100))
        
        let original_Price = Double((priceItem!+tax_amount))
        let discounted_Price = Double(priceItem!-(amountOff!+discount_amount+other_discount)+tax_amount)
        
        
        
        originalPrice.text="Original Price $\(original_Price)"
        discountPrice.text="Discount Price $\(discounted_Price)"
        
        originalPrice.isHidden=false
        discountPrice.isHidden=false
    }
    
    

   // Swipe function
    func handleSwipe(_ sender:UIGestureRecognizer) {
        self.performSegue(withIdentifier: "showResults", sender: self)
    }
    
    // enable unwinding other views
    @IBAction func unwindToCalc(segue:UIStoryboardSegue){
        
    }

}
