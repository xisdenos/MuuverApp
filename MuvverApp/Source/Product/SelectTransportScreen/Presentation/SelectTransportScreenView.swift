//
//  SelectTransportScreenView.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation
import UIKit

final class SelectTransportScreenView: UIView {
    
    //MARK: - Components
    
    lazy var blackTopGradient: BlackGradientNavigation = {
        let grad = BlackGradientNavigation()
        grad.translatesAutoresizingMaskIntoConstraints = false
        return grad
    }()
    
    //MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(blackTopGradient)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            blackTopGradient.topAnchor.constraint(equalTo: self.topAnchor),
            blackTopGradient.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            blackTopGradient.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            blackTopGradient.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 165)
        ])
    }
}
