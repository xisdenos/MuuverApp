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
        minimumPriceView.configTextFieldDelegate(delegate: self)
    }
}

extension MinimumPriceViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        minimumPriceView.priceSlider.value = CGFloat((minimumPriceView.priceTextField.text! as NSString).doubleValue)
    }
}
