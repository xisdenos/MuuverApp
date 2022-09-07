//
//  SelectTransportScreenController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation
import UIKit

class SelectTransportScreenViewController: UIViewController {
    
    var selectTransportScreenView: SelectTransportScreenView = SelectTransportScreenView()
    
    override func loadView() {
        self.view = selectTransportScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
