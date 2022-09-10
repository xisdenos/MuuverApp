//
//  CustomTF.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 08/09/22.
//

import Foundation

import UIKit

class PaddedLabel: UILabel {
    override var intrinsicContentSize: CGSize {
        CGSize(width: super.intrinsicContentSize.width + 20, height: super.intrinsicContentSize.height)
    }
}

class BorderLabelView: UIView {
    convenience init(labelName: String, textContent: String) {
        self.init()

        let contentView = UIView()

        contentView.backgroundColor = .white
        contentView.layer.borderWidth = 0.5
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.cornerRadius = 10;
        contentView.layer.masksToBounds = true;

        let textField = UITextField()
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 22.0)
        textField.text = textContent

        contentView.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25).isActive = true
        textField.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        addSubview(contentView)

        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true

        let label = PaddedLabel()
        label.text = labelName
        label.backgroundColor = .white
        label.textColor = UIColor.lightGray
        label.textAlignment = .center

        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: topAnchor, constant: -10).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
    }
}
