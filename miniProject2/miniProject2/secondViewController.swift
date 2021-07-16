//
//  secondViewController.swift
//  miniProject2
//
//  Created by Angela Wadden on 7/15/21.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var netflixImage: UIImageView!
    
    @IBOutlet weak var disneyImage: UIImageView!
    
    @IBOutlet weak var hboImage: UIImageView!
    
    @IBOutlet weak var otherImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        netflixImage.isHidden = true
        disneyImage.isHidden = true
        hboImage.isHidden = true
        otherImage.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func netflixButton(_ sender: UIButton) {
        netflixImage.isHidden = false
        disneyImage.isHidden = true
        hboImage.isHidden = true
        otherImage.isHidden = true
    }
    
    @IBAction func disneyButton(_ sender: UIButton) {
        disneyImage.isHidden = false
        netflixImage.isHidden = true
        hboImage.isHidden = true
        otherImage.isHidden = true
    }
    
    @IBAction func hboButton(_ sender: UIButton) {
        netflixImage.isHidden = true
        disneyImage.isHidden = true
        hboImage.isHidden = false
        otherImage.isHidden = true
    }
    
    @IBAction func otherButton(_ sender: UIButton) {
        netflixImage.isHidden = true
        disneyImage.isHidden = true
        hboImage.isHidden = true
        otherImage.isHidden = false
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
