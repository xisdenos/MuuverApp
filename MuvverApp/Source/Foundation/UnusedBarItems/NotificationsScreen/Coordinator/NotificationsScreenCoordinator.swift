//
//  NotificationsScreenCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class NotificationsScreenCoordinator: Coordinator {
    var navigationController: UINavigationController
    var homeViewController: NotificationsScreenViewController = {
        let viewController = NotificationsScreenViewController()
        viewController.tabBarItem.image = UIImage(systemName: "bell.fill")
        viewController.title = "Notificações"
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    
}
