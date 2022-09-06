//
//  DeliveriesScreenCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class FavoriteMovieCoordinator: Coordinator {
    var navigationController: UINavigationController
    var homeViewController: DeliveriesScreenViewController = {
        let viewController = DeliveriesScreenViewController()
        viewController.tabBarItem.image = UIImage(systemName: "suit.heart")
        viewController.title = "Home"
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    
}
