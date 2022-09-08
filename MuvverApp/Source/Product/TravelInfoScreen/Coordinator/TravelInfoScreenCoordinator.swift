//
//  TravelInfoScreenCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 08/09/22.
//

import Foundation
import UIKit


class TravelInfoScreenCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc: UIViewController = TravelInfoScreenViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
}
