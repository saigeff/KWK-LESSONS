//
//  ViewController.swift
//  MiniProject1
//
//  Created by Saige Forbes on 7/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pictureExample: UIImageView!
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var factOne: UILabel!
    @IBOutlet weak var factTwo: UILabel!
    @IBOutlet weak var factThree: UILabel!
    
var arrayOfFacts = ["I am one of two people in my family that was not born in Jamaica 🇯🇲", "I play soccer, field hockey, and track", "I enjoy reading books!", "I am an only child!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        //FactOne
        
        factOne.text = "I am one of two people in my family that was not born in Jamaica 🇯🇲"
        factTwo.text = "I play soccer ⚽️, field hockey, and track"
        factThree.text = "I am an only child!"
        
        //let randomIndex = Int.random(in: 0..<arrayOfFacts.count)
        //let randomFactOne = arrayOfFacts[randomIndex]
        //let randomFactTwo = arrayOfFacts[randomIndex]
       // let randomFactThree = arrayOfFacts[randomIndex]
        
       // factOne.text = randomFactOne
       // factTwo.text = randomFactTwo
        //factThree.text = randomFactThree
        
        
        
        
        //factone.text=arrayoffacts0
    }
    
}

