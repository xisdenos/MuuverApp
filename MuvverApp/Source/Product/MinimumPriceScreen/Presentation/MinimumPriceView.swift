//
//  MinimumPriceView.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 09/09/22.
//

import Foundation
import UIKit
import MaterialComponents.MaterialSlider

class MinimumPriceView: UIView {
    //MARK: - Components
    
    lazy var blackTopGradient: BlackGradientNavigation = {
        let grad = BlackGradientNavigation(frame: CGRect.zero, upperLabelText: "Ser um Muvver", lowerLabelText: "Definir preço mínimo do deslocamento?")
        grad.translatesAutoresizingMaskIntoConstraints = false
        return grad
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Preço de entrega"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var minimumTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Valor sugerido"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 0.32)
        return label
    }()
    
    lazy var priceSlider: MDCSlider = {
        let slider = MDCSlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(didChangeSliderValue(senderSlider:)), for: .valueChanged)
        slider.color = .black
        slider.minimumValue = 0
        slider.maximumValue = 300
        return slider
    }()
    
    lazy var priceTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "R$ "
        tf.layer.borderWidth = 2
        tf.keyboardType = .numbersAndPunctuation
        return tf
    }()
    //MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(blackTopGradient)
        addSubview(titleLabel)
        addSubview(minimumTitleLabel)
        addSubview(priceSlider)
        addSubview(priceTextField)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Delegates
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        priceTextField.delegate = delegate
    }
    
    //MARK: - Objc functions
    
    @objc private func didChangeSliderValue(senderSlider:MDCSlider) {
        priceTextField.text = String(format: "%.2f", Float(senderSlider.value))
    }
    
    //MARK: - Constraints
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            blackTopGradient.topAnchor.constraint(equalTo: self.topAnchor),
            blackTopGradient.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            blackTopGradient.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            blackTopGradient.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 165),
            
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            titleLabel.topAnchor.constraint(equalTo: blackTopGradient.bottomAnchor, constant: 25),
            
            priceSlider.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 45),
            priceSlider.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            priceSlider.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18),
            
            minimumTitleLabel.topAnchor.constraint(equalTo: priceSlider.topAnchor, constant: -6),
            minimumTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            priceTextField.topAnchor.constraint(equalTo: priceSlider.bottomAnchor, constant: 10),
            priceTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            priceTextField.widthAnchor.constraint(equalToConstant: 60),
            priceTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }
}
