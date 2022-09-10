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
        let vc: UIViewController = VolumeSizeController()
        self.navigationController.pushViewController(vc, animated: true)
    }
}
