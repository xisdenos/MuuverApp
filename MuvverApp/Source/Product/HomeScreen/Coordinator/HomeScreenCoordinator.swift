//
//  HomeScreenCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class HomeScreenCoordinator: Coordinator {
    var navigationController: UINavigationController

    var homeViewController: HomeScreenViewController = {
        let viewController = HomeScreenViewController()
        viewController.tabBarItem.image = UIImage(systemName: "house.fill")
        viewController.title = "Início"
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {}
    
    
}
