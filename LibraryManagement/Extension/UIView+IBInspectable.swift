//
//  UIView+IBInspectable.swift
//  ASAPhGo
//
//  Created by ANSHUL MAHIPAL on 10/03/22.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable var cornerRadius: Double {
         get {
           return Double(self.layer.cornerRadius)
         }set {
           self.layer.cornerRadius = CGFloat(newValue)
         }
    }
    @IBInspectable var borderWidth: Double {
          get {
            return Double(self.layer.borderWidth)
          }
          set {
           self.layer.borderWidth = CGFloat(newValue)
          }
    }
    @IBInspectable var borderColor: UIColor? {
         get {
            return UIColor(cgColor: self.layer.borderColor!)
         }
         set {
            self.layer.borderColor = newValue?.cgColor
         }
    }
    @IBInspectable var shadowColor: UIColor? {
        get {
           return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
           self.layer.shadowColor = newValue?.cgColor
        }
    }
    @IBInspectable var shadowOpacity: Float {
        get {
           return self.layer.shadowOpacity
        }
        set {
           self.layer.shadowOpacity = newValue
       }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {

            layer.shadowRadius = newValue
        }
    }
    @IBInspectable var shadowOffset : CGSize{

        get{
            return layer.shadowOffset
        }set{

            layer.shadowOffset = newValue
        }
    }
    
    
    
}


extension UIView {

    func roundCornered(_ corners: UIRectCorner, radius: CGFloat) {
        if #available(iOS 11.0, *) {
            clipsToBounds = true
            layer.cornerRadius = radius
            layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
        } else {
            let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            layer.mask = mask
        }
    }
}


extension UIView {
    func verticalDottedLine(color: CGColor, value: Int) {
        let lineLayer = CAShapeLayer()
        lineLayer.strokeColor = color
        lineLayer.lineWidth = 0.7
        lineLayer.lineDashPattern = [4,4]
        let path = CGMutablePath()
        path.addLines(between: [CGPoint(x: 0, y: 0),
                                CGPoint(x: 0, y: value)])
        lineLayer.path = path
        self.layer.addSublayer(lineLayer)
    }
}

extension UIView {
    func makeDashedBorderLine() {
        let path = CGMutablePath()
        let shapeLayer = CAShapeLayer()
        shapeLayer.lineWidth = 1.5
        shapeLayer.strokeColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        shapeLayer.lineDashPattern = [2, 4]
        path.addLines(between: [CGPoint(x: 0, y: 0),
                                CGPoint(x: bounds.maxX, y: 1)])
        shapeLayer.path = path
        layer.addSublayer(shapeLayer)
    }
}
