//
//  ViewController.swift
//  HW3
//
//  Created by Ivan Kozlov on 11/10/2019.
//  Copyright © 2019 Ivan Kozlov. All rights reserved.
//

import UIKit

class CustomStorage<Value>: UserDefaults {
    func get(with key: String) -> Value? {
        return self.object(forKey: key) as? Value
    }
    
    func set(with key: String, add value: Value) {
        super.set(value, forKey: key)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let launchCounter = CustomStorage<Int>();
        let count = launchCounter.get(with: "counts")
        if let count = count {
            launchCounter.set(with: "counts", add: count+1)
        } else {
            launchCounter.set(with: "counts", add: 1)
        }
        print(launchCounter.get(with: "counts"))
    }


}

