//
//  ViewController.swift
//  miniProject2
//
//  Created by Angela Wadden on 7/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winterPic: UIImageView!
    
    @IBOutlet weak var springPic: UIImageView!
    
    @IBOutlet weak var summerPic: UIImageView!
    
    @IBOutlet weak var fallPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winterPic.isHidden = true
        springPic.isHidden = true
        summerPic.isHidden = true
        fallPic.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func winter(_ sender: UIButton) {
        winterPic.isHidden = false
        springPic.isHidden = true
        summerPic.isHidden = true
        fallPic.isHidden = true
    }
    
    @IBAction func spring(_ sender: UIButton) {
        springPic.isHidden = false
        winterPic.isHidden = true
        summerPic.isHidden = true
        fallPic.isHidden = true
    }
    
    @IBAction func summer(_ sender: UIButton) {
        summerPic.isHidden = false
        winterPic.isHidden = true
        springPic.isHidden = true
        fallPic.isHidden = true
    }
    
    @IBAction func fall(_ sender: UIButton) {
        fallPic.isHidden = false
        winterPic.isHidden = true
        springPic.isHidden = true
        summerPic.isHidden = true
    }
    
    
}

