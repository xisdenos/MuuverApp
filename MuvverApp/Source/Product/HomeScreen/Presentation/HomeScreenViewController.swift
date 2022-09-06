//
//  HomeScreenViewController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class HomeScreenViewController: UIViewController {
    
    var homeScreenView: HomeScreenView = HomeScreenView()
    
    override func loadView() {
        super.loadView()
        self.view = homeScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
