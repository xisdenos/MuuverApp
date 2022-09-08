//
//  HomeScreenViewController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class HomeScreenViewController: UIViewController {
    var travelerNextScreen: (() -> Void)?
    
    var homeScreenView: HomeScreenView = HomeScreenView()
    
    override func loadView() {
        super.loadView()
        self.view = homeScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreenView.delegate(delegate: self)
    }
    
    //Hide navigation back button
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

    //Navigation protocol
extension HomeScreenViewController: HomeScreenProtocol {
    func actionSecondBlackBox() {
        travelerNextScreen?()
    }
}
