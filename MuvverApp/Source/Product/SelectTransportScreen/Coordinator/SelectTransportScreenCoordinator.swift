//
//  SelectTransportScreenCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation
import UIKit

class SelectTransportScreenCordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = SelectTransportScreenViewController()
        
        //closure call
        viewController.tavelInfoNextScreen = {
            self.startTraveInfoScreen()
        }
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func startTraveInfoScreen() {
        let coordinator: TravelInfoScreenCoordinator = TravelInfoScreenCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
}
