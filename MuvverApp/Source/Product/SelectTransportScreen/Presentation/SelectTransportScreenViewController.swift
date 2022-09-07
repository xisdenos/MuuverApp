//
//  SelectTransportScreenController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation
import UIKit

class SelectTransportScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
