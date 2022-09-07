//
//  GradientView.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 06/09/22.
//

import Foundation
import UIKit

class GradientView: UIView {
    
    let gradient = CAGradientLayer()
    
    init(colors: [CGColor]) {
        super.init(frame: .zero)
        gradient.frame = CGRect(x: 0, y: self.frame.height - 2, width: self.frame.width, height: 2)
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.colors = colors
        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        gradient.frame = bounds
    }
    
}
