//
//  VolumeSizeView.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation


import Foundation
import UIKit

protocol VolumeSizeViewProtocol: AnyObject {
    func actionGreenButton()
}

final class VolumeSizeView: UIView {
    
    weak var delegate: VolumeSizeViewProtocol?
    
    //MARK: - Components
    
    lazy var blackTopGradient: BlackGradientNavigation = {
        let grad = BlackGradientNavigation(frame: CGRect.zero, upperLabelText: "Ser um Moover", lowerLabelText: "O volume que você pode deslocar tem tamanho similar a que?")
        grad.translatesAutoresizingMaskIntoConstraints = false
        return grad
    }()
    
    lazy var tableViewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tamanho"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var transportTableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.register(VolumeSizeViewTableCell.self, forCellReuseIdentifier: VolumeSizeViewTableCell.identifier)
        return tb
    }()
    
    lazy var greenButton: NextScreenGreenButton = {
        let button = NextScreenGreenButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = true
        button.addTarget(self, action: #selector(greenButtonTapped), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(blackTopGradient)
        addSubview(tableViewLabel)
        addSubview(transportTableView)
        addSubview(greenButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Objs functions
    
    @objc private func greenButtonTapped() {
        delegate?.actionGreenButton()
    }
    
    //MARK: - delegates
    //tableview
    public func setTableViewDelegates(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        transportTableView.delegate = delegate
        transportTableView.dataSource = dataSource
    }
    
    //green button
    
    public func configDelegate(delegate: VolumeSizeViewProtocol?) {
        self.delegate = delegate
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            blackTopGradient.topAnchor.constraint(equalTo: self.topAnchor),
            blackTopGradient.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            blackTopGradient.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            blackTopGradient.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 165),
            
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18),
            greenButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -(UIScreen.main.bounds.height / 10)),
            
            tableViewLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            tableViewLabel.topAnchor.constraint(equalTo: blackTopGradient.bottomAnchor, constant: 25),
            
            transportTableView.topAnchor.constraint(equalTo: tableViewLabel.bottomAnchor, constant: 10),
            transportTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 1),
            transportTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -1),
            transportTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
