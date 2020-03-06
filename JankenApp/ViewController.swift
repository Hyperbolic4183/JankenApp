//
//  ViewController.swift
//  JankenApp
//
//  Created by owner on 2020/03/06.
//  Copyright © 2020 Amane.Otsuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabal: UILabel!
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        answerNumber = Int(arc4random_uniform(3))
        if answerNumber == 0 {
            answerLabal.text = "グー"
            answerImageView.image = UIImage(named:"gu")
            
        } else if answerNumber == 1 {
            answerLabal.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
        } else if answerNumber == 2 {
            answerLabal.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
        
    
    }
    

}

