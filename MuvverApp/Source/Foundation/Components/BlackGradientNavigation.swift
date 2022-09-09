//
//  BlackGradientNavigation.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation
import UIKit

class BlackGradientNavigation: UIView {
    
    //MARK: - Components
    
    lazy var gradient: GradientView = {
        let grad = GradientView(colors: [UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 1).cgColor,
                                         UIColor(red: 53/255, green: 55/255, blue: 64/255, alpha: 1).cgColor])
        grad.translatesAutoresizingMaskIntoConstraints = false
        return grad
    }()
    
    lazy var xButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        return button
    }()
    
    lazy var centralLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Viajante"
        label.textColor = UIColor(white: 1, alpha: 0.54)
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cancelar", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.addArrangedSubview(xButton)
        stack.addArrangedSubview(centralLabel)
        stack.addArrangedSubview(cancelButton)
        stack.distribution = .equalSpacing
        stack.isUserInteractionEnabled = true
        return stack
    }()
    
    lazy var lowerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Qual será o meio de transporte da sua viagem?"
        label.textColor = UIColor(white: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Initializer
    init(frame: CGRect, upperLabelText: String, lowerLabelText: String) {
        super.init(frame: frame)
        addSubview(gradient)
        addSubview(stackView)
        addSubview(lowerLabel)
        lowerLabel.text = lowerLabelText
        centralLabel.text = upperLabelText
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    
    private func configContraints() {
        NSLayoutConstraint.activate([
            gradient.topAnchor.constraint(equalTo: self.topAnchor),
            gradient.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            gradient.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            gradient.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            lowerLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 18),
            lowerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            lowerLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
    }
}
