//
//  UISegmentedControl+Extension.swift
//  MuvverApp
//
//  Created by Lucas Pinto on 08/09/22.
//

import UIKit

import Foundation
extension UISegmentedControl {

    func removeBorder(){

        self.tintColor = UIColor(white: 1, alpha: 0)
        self.backgroundColor = UIColor(white: 1, alpha: 0)
        self.setTitleTextAttributes( [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)], for: .selected)
        self.setTitleTextAttributes( [NSAttributedString.Key.foregroundColor : UIColor.gray, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)], for: .normal)
        if #available(iOS 13.0, *) {
            self.selectedSegmentTintColor = UIColor.clear
        }

    }

    func setupSegment() {
        self.removeBorder()
        let segmentUnderlineWidth: CGFloat = self.bounds.width
        let segmentUnderlineHeight: CGFloat = 2.0
        let segmentUnderlineXPosition = self.bounds.minX
        let segmentUnderLineYPosition = self.bounds.size.height - 1.0
        let segmentUnderlineFrame = CGRect(x: segmentUnderlineXPosition, y: segmentUnderLineYPosition, width: segmentUnderlineWidth, height: segmentUnderlineHeight)
        let segmentUnderline = UIView(frame: segmentUnderlineFrame)
        segmentUnderline.backgroundColor = UIColor.clear

        self.addSubview(segmentUnderline)
        self.addUnderlineForSelectedSegment()
    }

    func addUnderlineForSelectedSegment(){

        let underlineWidth: CGFloat = self.bounds.size.width / CGFloat(self.numberOfSegments)
        let underlineHeight: CGFloat = 2.0
        let underlineXPosition = CGFloat(selectedSegmentIndex * Int(underlineWidth))
        let underLineYPosition = self.bounds.size.height - 1.0
        let underlineFrame = CGRect(x: underlineXPosition, y: underLineYPosition, width: underlineWidth, height: underlineHeight)
        let underline = UIView(frame: underlineFrame)
        underline.backgroundColor = UIColor.white
        underline.tag = 1
        self.addSubview(underline)


    }

    func changeUnderlinePosition(){
        guard let underline = self.viewWithTag(1) else {return}
        let underlineFinalXPosition = (self.bounds.width / CGFloat(self.numberOfSegments)) * CGFloat(selectedSegmentIndex)
        underline.frame.origin.x = underlineFinalXPosition

    }
}
