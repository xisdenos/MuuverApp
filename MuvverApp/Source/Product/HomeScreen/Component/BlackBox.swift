//
//  BlackBox.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 06/09/22.
//

import UIKit

class BlackBox: UIView {
    
    var title: String
    var desciption: String
    var imageName: String
    
    lazy var gradient: GradientView = {
        let view = GradientView(colors: [UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 1).cgColor,
                                         UIColor(red: 53/255, green: 55/255, blue: 64/255, alpha: 1).cgColor])
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = self.title
        label.textAlignment = .center
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = self.desciption
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 5
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(descriptionLabel)
        stack.distribution = .fillEqually
        stack.isUserInteractionEnabled = true
        return stack
        }()
    
    lazy var sideImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: self.imageName)
        return image
    }()

    //MARK: - Initializer
    
    init(frame: CGRect = CGRect.zero, title: String, description: String, imageName: String) {
        self.title = title
        self.desciption = description
        self.imageName = imageName
        super.init(frame: frame)
        configureSuperView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSuperView() {
        addSubview(gradient)
        addSubview(stackView)
        addSubview(sideImageView)
    }
    
    //MARK: - Constraints
    private func configConstraints() {
        NSLayoutConstraint.activate([
            gradient.topAnchor.constraint(equalTo: self.topAnchor),
            gradient.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            gradient.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            gradient.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 24),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 28),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -34),
            
            sideImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            sideImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
