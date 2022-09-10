//
//  VolumeSizeCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation
import UIKit


class VolumeSizeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = VolumeSizeController()
        
        vc.minimumPriceNextScreen = {
            self.startVolumeSizeScreen()
        }
        
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    private func startVolumeSizeScreen() {
        let coordinator: MinimumPriceCoordinator = MinimumPriceCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
}
