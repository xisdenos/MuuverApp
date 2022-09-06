//
//  HomeScreenView.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 05/09/22.
//

import Foundation
import UIKit

class HomeScreenView: UIView {
    
    //MARK: - Components
    
    //Top Itens
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "MuvverLogo")
        image.contentMode = .scaleAspectFit
        image.widthAnchor.constraint(equalToConstant: 95).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    lazy var userProfileButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        button.backgroundColor = .gray
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.addArrangedSubview(logoImageView)
        stack.addArrangedSubview(userProfileButton)
        stack.distribution = .equalSpacing
        stack.isUserInteractionEnabled = true
        return stack
    }()
    
    // 2 Labels
    lazy var twoColorsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
            //Multicolor label
            let atts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.87),
                                                       .font: UIFont.systemFont(ofSize: 24)]
            let attributedTitle = NSMutableAttributedString(string: "Facilitando seus ", attributes: atts)
            let boldAtts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.87),
                                                           .font: UIFont.boldSystemFont(ofSize: 24)]
            attributedTitle.append(NSAttributedString(string: "envios.", attributes: boldAtts))
            //
        
        label.attributedText = attributedTitle
        return label
    }()
    
    lazy var grayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 0.32)
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Entregue ou envie."
        return label
    }()
    
    lazy var blackBox: UIView = {
        let view = BlackBox(title: "Remetente", description: "Pra onde quer enviar seu objeto?", imageName: "greenBox")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var secondBlackBox: UIView = {
        let view = BlackBox(title: "Viajante", description: "Vai viajar pra onde?", imageName: "blueTruck")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configureSuperView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - SuperView function
    
    private func configureSuperView() {
        addSubview(stackView)
        addSubview(twoColorsLabel)
        addSubview(grayLabel)
        addSubview(blackBox)
        addSubview(secondBlackBox)
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 25),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -25),
            stackView.heightAnchor.constraint(equalToConstant: 40),
            
            twoColorsLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
            twoColorsLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            
            grayLabel.topAnchor.constraint(equalTo: twoColorsLabel.bottomAnchor, constant: 12),
            grayLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            
            blackBox.topAnchor.constraint(equalTo: grayLabel.topAnchor, constant: 70),
            blackBox.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 25),
            blackBox.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -25),
            blackBox.heightAnchor.constraint(equalToConstant: 150),
            
            secondBlackBox.topAnchor.constraint(equalTo: blackBox.bottomAnchor, constant: 24),
            secondBlackBox.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 25),
            secondBlackBox.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -25),
            secondBlackBox.heightAnchor.constraint(equalToConstant: 150),
        ])
    }
}
