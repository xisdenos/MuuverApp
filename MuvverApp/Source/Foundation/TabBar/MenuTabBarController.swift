//
//  MenuTabBarController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

final class MeuTabBarController: UITabBarController {
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        
        tabBar.tintColor = .blue
        tabBar.isTranslucent = false
        UITabBar.appearance().barTintColor = .green
    }
}
