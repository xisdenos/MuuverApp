//
//  VolumeSizeController.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation
import UIKit

class VolumeSizeController: UIViewController{
   
    var volumeSizeView: VolumeSizeView = VolumeSizeView()
    var viewModel: VolumeSizeViewModel = VolumeSizeViewModel()
    
    override func loadView() {
        view = volumeSizeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        volumeSizeView.setTableViewDelegates(delegate: self, dataSource: self)
        volumeSizeView.configDelegate(delegate: self)
    }
    
    //Hide navigation back button
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}


//MARK: - TableView configuration
extension VolumeSizeController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        volumeSizeView.greenButton.isHidden = viewModel.anySelected()
        return viewModel.transportListInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: VolumeSizeViewTableCell? = tableView.dequeueReusableCell(withIdentifier: VolumeSizeViewTableCell.identifier, for: indexPath) as? VolumeSizeViewTableCell
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
        volumeSizeView.transportTableView.reloadData()
    }
}

//MARK: - Next screen configuration

extension VolumeSizeController: VolumeSizeViewProtocol {
    func actionGreenButton() {
        
    }
}

