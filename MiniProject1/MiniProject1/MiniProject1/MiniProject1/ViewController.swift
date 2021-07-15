//
//  ViewController.swift
//  MiniProject1
//
//  Created by Angela Wadden on 7/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    var fact1Text = "I've been playing tennis for about 5 years."
    var fact2Text = "I'm going to be a sophomore in high school."
    var fact3Text = "I love spending time at the beach with friends and family."

    @IBOutlet weak var fact1: UILabel!
    
    @IBOutlet weak var fact2: UILabel!
    
    
    @IBOutlet weak var fact3: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeFactText(){
        fact1.text = fact1Text
        fact2.text = fact2Text
        fact3.text = fact3Text
    }
    

    @IBAction func button1(_ sender: UIButton) {
        changeFactText()
    }
    
   
    
}

