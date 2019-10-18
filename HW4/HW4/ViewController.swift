//
//  ViewController.swift
//  HW4
//
//  Created by Ivan Kozlov on 18/10/2019.
//  Copyright © 2019 Ivan Kozlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let topButton = UIButton()
    let botButton = UIButton()
    weak var delegateNavigator: UINavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topButton.backgroundColor = .magenta
        topButton.frame = CGRect(x: 50, y: 100, width: 50, height: 50)
        topButton.setTitle("top", for: .normal)
        topButton.addTarget(self, action: #selector(pressedTop(sender:)), for: .touchUpInside)
        view.addSubview(topButton)

        botButton.backgroundColor = .magenta
        botButton.frame = CGRect(x: 50, y: 200, width: 50, height: 50)
        botButton.setTitle("bot", for: .normal)
        botButton.addTarget(self, action: #selector(pressedBot(sender:)), for: .touchUpInside)
        view.addSubview(botButton)
    }


    @objc func pressedBot(sender: UIButton!) {
        let baseView = UIViewController()
        baseView.view = UIView(frame: .zero)
        baseView.view.backgroundColor = .cyan

        delegateNavigator?.pushViewController(baseView, animated: true)
        print("bot")
    }

    @objc func pressedTop(sender: UIButton!) {
        let baseView = UIViewController()
        baseView.view = UIView(frame: .zero)
        baseView.view.backgroundColor = .blue

        delegateNavigator?.pushViewController(baseView, animated: true)
        print("top")
        
    }
}

