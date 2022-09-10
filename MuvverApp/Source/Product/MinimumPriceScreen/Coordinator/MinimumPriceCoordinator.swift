//
//  MinimumPriceCoordinator.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation
import UIKit

class MinimumPriceCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc: UIViewController = MinimumPriceViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
}

