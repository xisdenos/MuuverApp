//
//  SelectTransportTableViewCell.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation
import UIKit

class SelectTransportTableViewCell: UITableViewCell {
    
    static let identifier = "SelectTransportTableViewCell"
    
    //MARK: - Components
    lazy var transportImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ic_aviao")
        image.heightAnchor.constraint(equalToConstant: 45).isActive = true
        image.widthAnchor.constraint(equalToConstant: 45).isActive = true
        return image
    }()
    
    lazy var transportLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Aviao"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var circleImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 32).isActive = true
        image.widthAnchor.constraint(equalToConstant: 32).isActive = true
        return image
    }()
    
    //MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(transportImageView)
        addSubview(transportLabel)
        addSubview(circleImageView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: SetUpCell func
    
    public func setUpCell(imageName: String, transportText: String, greenCircle: Bool) {
        transportImageView.image = UIImage(named: imageName)
        transportLabel.text = transportText
        if greenCircle {
            circleImageView.image = UIImage(systemName: "circle.circle")?.withTintColor(UIColor.green, renderingMode: .alwaysOriginal)
        } else {
            circleImageView.image = UIImage(systemName: "circle")?.withTintColor(UIColor.black, renderingMode: .alwaysOriginal)
        }
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            transportImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            transportImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            transportLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            transportLabel.leadingAnchor.constraint(equalTo: transportImageView.trailingAnchor, constant: 12),
            
            circleImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            circleImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
        ])
    }
}
