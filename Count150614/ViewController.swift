//
//  ViewController.swift
//  Count150614
//
//  Created by Ken Tominaga on 6/14/15.
//  Copyright (c) 2015 Ken Tominaga. All rights reserved.
//

import UIKit

extension UIColor {
    class func someColor() -> UIColor {
        return UIColor(red: 0.6, green: 0.1, blue: 0.1, alpha: 1.0)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var digitLabel: UILabel!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
//    @IBAction func buttonDidPress(button: UIButton) {
//        if button.tag == 0 { // +ボタンが押されたとき
//            number++
//        } else { // -ボタンが押されたとき
//            number--
//        }
//        
//        adjustLabel(number)
//    }
    
    // +ボタンが押されたとき
    @IBAction func plus(sender: UIButton) {
        
        number++
        adjustLabel(number)
    }
    
    // -ボタンが押されたとき
    @IBAction func minus(sender: UIButton) {
        
        number--
        adjustLabel(number)
    }
    
    // ラベルに変更を与える（文字の表示/色の変更）
    private func adjustLabel(number: Int) {
        
        if number > 0 {
            digitLabel.textColor = UIColor.someColor()
        } else if number < 0 {
            digitLabel.textColor = UIColor.blueColor()
        } else {
            digitLabel.textColor = UIColor.blackColor()
        }
        
        digitLabel.text = "\(number)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

