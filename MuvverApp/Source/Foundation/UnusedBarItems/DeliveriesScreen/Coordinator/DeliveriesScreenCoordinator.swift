//
//  DeliveriesScreenCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class DeliveriesScreenCoordinator: Coordinator {
    var navigationController: UINavigationController
    var homeViewController: DeliveriesScreenViewController = {
        let viewController = DeliveriesScreenViewController()
        viewController.tabBarItem.image = UIImage(systemName: "train.side.front.car")
        viewController.title = "Entregas"
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    
}
