//
//  ViewController.swift
//  LPViewBorderMaker-Swift-Sample
//
//  Created by litt1e-p on 16/6/30.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeViewBorders()
    }
    
    func makeViewBorders() {
        let v1 = UIView(frame: CGRectMake(50, 50, 100, 100))
        v1.makeBorders()
        view.addSubview(v1)
        
        let v2 = UIView(frame: CGRectMake(50, 180, 100, 100))
        v2.makeBorder(5.0, color: .brownColor(), positions: [.Bottom])
        view.addSubview(v2)
        
        let v3 = UIView(frame: CGRectMake(150, 170, 100, 70))
        v3.makeBorder(0.5, color: .redColor(), positions: [.Bottom, .Right, .Left])
        view.addSubview(v3)
        
        let v4 = UIView(frame: CGRectMake(50, 330, 300, 50))
        v4.makeBorder(1.0, color: .greenColor(), positions: [.Bottom, .Top])
        view.addSubview(v4)
        
        let btn1  = UIButton(type: .Custom)
        btn1.frame = CGRectMake(50, 400, 300, 80)
        btn1.setTitle("Button", forState: .Normal)
        btn1.setTitleColor(.purpleColor(), forState: .Normal)
        btn1.makeBorders()
        view.addSubview(btn1)
    }
}

