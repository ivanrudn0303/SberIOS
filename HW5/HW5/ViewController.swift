//
//  ViewController.swift
//  HW5
//
//  Created by Ivan Kozlov on 22/10/2019.
//  Copyright © 2019 Ivan Kozlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let butt = UIButton()
    var inButtHandler = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        butt.frame = CGRect(x: 150, y: 200, width: 80, height: 40)
        butt.setTitle("Button", for: .normal)
        butt.addTarget(self, action: #selector(pressButt(button:)), for: .touchUpInside)
        butt.backgroundColor = .red
        view.addSubview(butt)
    }

    @objc func pressButt(button: UIButton) {
        print("pressed!")
        if inButtHandler {
            return
        } else {
            inButtHandler = true
        }

        let animations = CAAnimationGroup()
        animations.duration = 4
        animations.autoreverses = true

        let changeColor = CABasicAnimation(keyPath: "backgroundColor")
        changeColor.fromValue = UIColor.red.cgColor
        changeColor.toValue = UIColor.blue.cgColor

        let rotate = CABasicAnimation(keyPath: "transform.rotation")
        rotate.fromValue = 0
        rotate.toValue = 4.0 * Double.pi

        let scale = CABasicAnimation(keyPath: "transform.scale")
        scale.fromValue = 1.0
        scale.toValue = 4.0

        animations.animations = [changeColor, rotate, scale]
        button.layer.add(animations, forKey: "myGroup")
    }
}

