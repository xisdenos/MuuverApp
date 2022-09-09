//
//  TravelInfoScreenViewController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 08/09/22.
//

import Foundation
import UIKit

class TravelInfoScreenViewController: UIViewController {
    
    var travelInfoScreenView: TravelInfoScreenView = TravelInfoScreenView()
    var viewModel: TravelInfoScreenViewModel = TravelInfoScreenViewModel()
    var volumeSizeNextScreen: (() -> Void)?
    
    override func loadView() {
        super.loadView()
        view = travelInfoScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        travelInfoScreenView.configTextFieldDelegate(delegate: self)
        travelInfoScreenView.configDelegate(delegate: self)
    }
    
    //Hide navigation back button
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension TravelInfoScreenViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        viewModel.initialPlaceText = travelInfoScreenView.initialPlace.text
        viewModel.finalPlaceText = travelInfoScreenView.finalPlace.text
        travelInfoScreenView.configGreenButton(isEnabled: !viewModel.isTextFieldEmpty)
    }
}

//MARK: - Next screen configuration

extension TravelInfoScreenViewController: TravelInfoScreenViewProtocol {
    func actionGreenButton() {
        volumeSizeNextScreen?()
    }
}
