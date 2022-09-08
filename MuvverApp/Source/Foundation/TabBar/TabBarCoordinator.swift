//
//  TabBarCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class MenuTabBar: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeScreenCoordinator = HomeScreenCoordinator(navigationController: navigationController)
        homeScreenCoordinator.start()
        let notificationsScreenCoordinator = NotificationsScreenCoordinator(navigationController: navigationController)
        let chatScreenCoordinator = ChatScreenCoordinator(navigationController: navigationController)
        let requestScreenCoordinator = RequestsScreenCoordinator(navigationController: navigationController)
        let deliveriesScreenCoordinator = DeliveriesScreenCoordinator(navigationController: navigationController)
        
        let menuTabBarViewController = MenuTabBarController()
        menuTabBarViewController.setViewControllers([homeScreenCoordinator.homeViewController,
                                                     notificationsScreenCoordinator.homeViewController,
                                                     chatScreenCoordinator.homeViewController,
                                                     requestScreenCoordinator.homeViewController,
                                                     deliveriesScreenCoordinator.homeViewController],
                                                     animated: true)
        self.navigationController.pushViewController(menuTabBarViewController, animated: true)
    }
}
