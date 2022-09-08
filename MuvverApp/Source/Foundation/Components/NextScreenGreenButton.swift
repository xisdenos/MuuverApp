//
//  NextScreenGreenButton.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 07/09/22.
//

import Foundation
import UIKit

class NextScreenGreenButton: UIButton {
    
    //MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 22/255, green: 164/255, blue: 92/255, alpha: 1)
        setTitle("Avançar", for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        titleLabel?.textAlignment = .center
        layer.cornerRadius = 4
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = .greatestFiniteMagnitude
        
        self.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.heightAnchor.constraint(equalToConstant: 54).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
