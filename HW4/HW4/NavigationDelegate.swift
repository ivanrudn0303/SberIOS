//
//  NavigationDelegate.swift
//  HW4
//
//  Created by Ivan Kozlov on 19/10/2019.
//  Copyright © 2019 Ivan Kozlov. All rights reserved.
//

import UIKit

class NavigationDelegate: NSObject, UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
            print("willShow type:", type(of: viewController))
    }
    
}
