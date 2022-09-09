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
    var viewModel: SelectTransportScreenViewModel = SelectTransportScreenViewModel()
    var tavelInfoNextScreen: (() -> Void)?
    
    override func loadView() {
        self.view = selectTransportScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectTransportScreenView.setTableViewDelegates(delegate: self, dataSource: self)
        selectTransportScreenView.configDelegate(delegate: self)
    }
    
    //Hide navigation back button
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}


//MARK: - TableView configuration
extension SelectTransportScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selectTransportScreenView.greenButton.isHidden = viewModel.anySelected()
        return viewModel.transportListInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SelectTransportTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SelectTransportTableViewCell.identifier, for: indexPath) as? SelectTransportTableViewCell
        cell?.setUpCell(
                        imageName: viewModel.transportListInfo[indexPath.row][0],
                        transportText: viewModel.transportListInfo[indexPath.row][1],
                        greenCircle: viewModel.transportListInfoBool[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(75)
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.selectVehicle(transportNumber: indexPath.row)
        selectTransportScreenView.transportTableView.reloadData()
    }
}

//MARK: - Next screen configuration

extension SelectTransportScreenViewController: SelectTransportScreenViewProtocol {
    func actionGreenButton() {
        tavelInfoNextScreen?()
    }
}
