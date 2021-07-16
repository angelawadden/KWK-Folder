//
//  thirdViewController.swift
//  miniProject2
//
//  Created by Angela Wadden on 7/15/21.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var cityImage: UIImageView!
    
    @IBOutlet weak var beachImage: UIImageView!
    
    @IBOutlet weak var natureImage: UIImageView!
    
    @IBOutlet weak var suburbanImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityImage.isHidden = true
        beachImage.isHidden = true
        natureImage.isHidden = true
        suburbanImage.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cityButton(_ sender: UIButton) {
        cityImage.isHidden = false
        beachImage.isHidden = true
        natureImage.isHidden = true
        suburbanImage.isHidden = true
    }
    
    @IBAction func beachButton(_ sender: UIButton) {
        cityImage.isHidden = true
        beachImage.isHidden = false
        natureImage.isHidden = true
        suburbanImage.isHidden = true
    }
    
    @IBAction func natureButton(_ sender: UIButton) {
        cityImage.isHidden = true
        beachImage.isHidden = true
        natureImage.isHidden = false
        suburbanImage.isHidden = true
    }
    
    @IBAction func suburbsButton(_ sender: UIButton) {
        cityImage.isHidden = true
        beachImage.isHidden = true
        natureImage.isHidden = true
        suburbanImage.isHidden = false
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
