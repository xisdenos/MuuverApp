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
    
    lazy var priceSlider: MDCSlider = {
        let slider = MDCSlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(didChangeSliderValue(senderSlider:)), for: .valueChanged)
        slider.color = .black
        return slider
    }()
    //MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(blackTopGradient)
        addSubview(titleLabel)
        addSubview(priceSlider)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Objc functions
    
    @objc func didChangeSliderValue(senderSlider:MDCSlider) {
      print("Did change slider value to: \(senderSlider.value)")
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
            
            priceSlider.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            priceSlider.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            priceSlider.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18),
        ])
        
    }
}
