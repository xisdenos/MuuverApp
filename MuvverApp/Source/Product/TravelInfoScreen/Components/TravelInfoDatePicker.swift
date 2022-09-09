//
//  TravelInfoDatePicker.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 08/09/22.
//

import UIKit

class TravelInfoDatePicker: UIDatePicker {

    override init(frame: CGRect) {
        super.init(frame: frame)
    
        translatesAutoresizingMaskIntoConstraints = false
        datePickerMode = .date
        backgroundColor = .white
        tintColor = .white
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        
        widthAnchor.constraint(equalToConstant: 156).isActive = true
        heightAnchor.constraint(equalToConstant: 54).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
