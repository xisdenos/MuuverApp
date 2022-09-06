//
//  MenuTabBarController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

final class MenuTabBarController: UITabBarController {
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        
        tabBar.tintColor = .gray
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .green
    }
}
