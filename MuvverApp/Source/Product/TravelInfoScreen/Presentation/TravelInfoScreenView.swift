//
//  TravelInfoScreenView.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 08/09/22.
//

import Foundation
import UIKit
import MaterialComponents

protocol TravelInfoScreenViewProtocol: AnyObject {
    func actionGreenButton()
}

final class TravelInfoScreenView: UIView {
    
    weak var delegate: TravelInfoScreenViewProtocol?
    
    //MARK: - Components
    
    lazy var blackTopGradient: BlackGradientNavigation = {
        let grad = BlackGradientNavigation(frame: CGRect.zero, lowerLabelText: "Qual o trajeto da sua viagem?")
        grad.translatesAutoresizingMaskIntoConstraints = false
        return grad
    }()
    
    lazy var segmentedControl: UISegmentedControl = {
        let segmented = UISegmentedControl()
           
        segmented.insertSegment(withTitle: "Rotas", at: 0, animated: false)
        segmented.insertSegment(withTitle: "Mapa", at: 1, animated: false)
           
        segmented.translatesAutoresizingMaskIntoConstraints = false
        segmented.selectedSegmentIndex = 0
        segmented.selectedSegmentTintColor = .black
        
        segmented.backgroundColor = .black
        segmented.tintColor = .black
        segmented.selectedSegmentTintColor = .white
           
        segmented.layer.borderColor = UIColor.black.cgColor
        segmented.layer.borderWidth = 0
        segmented.layer.cornerRadius = 0
        segmented.selectedSegmentTintColor = .black
           
        segmented.setTitleTextAttributes([
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ], for: .normal)
           
        segmented.setTitleTextAttributes([
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ], for: .normal)
        segmented.setupSegment()
        segmented.addUnderlineForSelectedSegment()
        return segmented
       }()
    
    lazy var boldLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Selecione a data e rota da sua viagem"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var departureDatePicker: UIDatePicker = {
        let dt = TravelInfoDatePicker()
        return dt
    }()
    
    lazy var returnDatePicker: UIDatePicker = {
        let dt = TravelInfoDatePicker()
        return dt
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.addArrangedSubview(departureDatePicker)
        stack.addArrangedSubview(returnDatePicker)
        stack.distribution = .equalSpacing
        stack.isUserInteractionEnabled = true
        return stack
    }()
    
    lazy var initialPlace: MDCOutlinedTextField = {
        let tf = MDCOutlinedTextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.label.text = "Cidade de origem"
        tf.placeholder = "Ex: Campo Grande, MS"
        tf.sizeToFit()
        return tf
    }()
    
    lazy var finalPlace: MDCOutlinedTextField = {
        let tf = MDCOutlinedTextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.label.text = "Cidade de destino"
        tf.placeholder = "Ex: Campo Grande, MS"
        tf.sizeToFit()
        return tf
    }()
    
    lazy var greenButton: NextScreenGreenButton = {
        let button = NextScreenGreenButton()
        button.isHidden = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    //MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        configureSuperView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSuperView() {
        addSubview(blackTopGradient)
        addSubview(segmentedControl)
        addSubview(boldLabel)
        addSubview(stackView)
        addSubview(initialPlace)
        addSubview(finalPlace)
        addSubview(greenButton)
    }
    
    //MARK: - Delegates
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        initialPlace.delegate = delegate
        finalPlace.delegate = delegate
    }
    
    //green button
    
    public func configDelegate(delegate: TravelInfoScreenViewProtocol?) {
        self.delegate = delegate
    }
    
    //MARK: - Validation receiver
    
    public func configGreenButton(isEnabled: Bool) {
        greenButton.isHidden = isEnabled
    }
    
    //MARK: - Constraints
    private func configConstraints() {
        NSLayoutConstraint.activate([
            blackTopGradient.topAnchor.constraint(equalTo: self.topAnchor),
            blackTopGradient.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            blackTopGradient.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            blackTopGradient.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 195),
            
            segmentedControl.topAnchor.constraint(equalTo: blackTopGradient.bottomAnchor, constant: -35),
            segmentedControl.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            segmentedControl.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            boldLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 30),
            boldLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            stackView.topAnchor.constraint(equalTo: boldLabel.bottomAnchor, constant: 30),
            stackView.leadingAnchor.constraint(equalTo: boldLabel.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            initialPlace.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 35),
            initialPlace.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            initialPlace.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -20),
            
            finalPlace.topAnchor.constraint(equalTo: initialPlace.bottomAnchor, constant: 35),
            finalPlace.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            finalPlace.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -20),
            
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18),
            greenButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -(UIScreen.main.bounds.height / 10)),
            
        ])
    }
}
