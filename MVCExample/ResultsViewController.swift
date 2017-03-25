//
//  ResultsViewController.swift
//  MVCExample
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(handleSwipe))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        view.addGestureRecognizer(swipeRight)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func handleSwipe(sender:UIGestureRecognizer){
        self.performSegue(withIdentifier:"unwindToCalc", sender:self)
    }

}
