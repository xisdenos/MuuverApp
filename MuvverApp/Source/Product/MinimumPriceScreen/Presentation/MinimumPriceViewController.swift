//
//  MinimumPriceViewController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation
import UIKit

class MinimumPriceViewController: UIViewController {
    
    var minimumPriceView: MinimumPriceView = MinimumPriceView()
    
    override func loadView() {
        self.view = minimumPriceView
    }
    
    override func viewDidLoad() {
        
    }
}
