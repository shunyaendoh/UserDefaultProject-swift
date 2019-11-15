    //
//  ViewController.swift
//  UserDefaultProject
//
//  Created by shunya endoh on 2019/11/15.
//  Copyright © 2019 shunya endoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    // 0: 赤, 1: 青, 2: 黄
    var colorNumber = 0
    
    fileprivate func changeBgColor() {
        switch colorNumber {
        case 0:
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .blue
        case 2:
            view.backgroundColor = .yellow
        default:
            view.backgroundColor = .white
        }
        
        switch colorNumber {
        case 0:
            label.text = "赤"
        case 1:
            label.text = "青"
        case 2:
            label.text = "黄"
        default:
            label.text = "白"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBgColor()
    }

    @IBAction func didClickButton(_ sender: UIButton) {
        colorNumber = (colorNumber + 1) % 3
        changeBgColor()
        
    }
    
}

