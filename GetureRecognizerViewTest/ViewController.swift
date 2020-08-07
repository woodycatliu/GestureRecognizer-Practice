//
//  ViewController.swift
//  GetureRecognizerViewTest
//
//  Created by Woody Liu on 2020/8/7.
//  Copyright © 2020 thisWhat. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet var viewOne: UIView!
    @IBOutlet var viewTwo: UIView!
    @IBOutlet var viewThree: UIView!
    var value:Int = 0
    
    var getureOne: UIGestureRecognizer = UITapGestureRecognizer()
    var getureTwo: UIGestureRecognizer = UITapGestureRecognizer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getureOne.addTarget(self, action: #selector(viewOneAction))
        getureOne.delegate = self
        viewOne.addGestureRecognizer(getureOne)
        getureTwo.addTarget(self, action: #selector(viewTwoAction))
        getureTwo.delegate = self
        viewTwo.addGestureRecognizer(getureTwo)
        
      
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        let view = touch.view
       
        if view != viewThree {
            return true
        }
        return false
    }
    

}



extension ViewController {
    
    @objc func viewOneAction(){
        print("viewOne active")
    }
    
    @objc func viewTwoAction(){
        print("viewTwo active")
    }
    
    @objc func viewThreeAction(){
        print("viewThree active")
        print("--------\(value)--------")
        value += 1
    }
    
    
    
    
    
    
    
}



