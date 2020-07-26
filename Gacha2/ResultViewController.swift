//
//  ResultViewController.swift
//  Gacha2
//
//  Created by 柳川万結 on 2019/10/25.
//  Copyright © 2019 柳川万結. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //そのバーの中の変数が整数
    var number : Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in: 0...9)
        if number == 7{
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold.png")
        } else if number > 7{
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_blue.png")
        }else{
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_red.png")
            
        }
    }
        @IBAction func back() {
            self.dismiss(animated: true, completion: nil)
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
