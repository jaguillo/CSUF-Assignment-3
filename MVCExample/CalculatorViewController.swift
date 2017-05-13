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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculatePrice(_ sender: UIButton) {
    }
    
    

   // Swipe function
    func handleSwipe(_ sender:UIGestureRecognizer) {
        self.performSegue(withIdentifier: "showResults", sender: self)
    }
    
    // enable unwinding other views
    @IBAction func unwindToCalc(segue:UIStoryboardSegue){
        
    }

}
