//
//  DesignableView.swift
//  Caps Network App
//
//  Created by Kenneth W. Meade on 3/25/21.
//  Copyright © 2021 Kenneth W. Meade. All rights reserved.
//

import UIKit
@IBDesignable
class DesignableView: UIView {
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }

    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }

    @IBInspectable var shadowOpacity: CGFloat = 0 {
        didSet {
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }

    @IBInspectable var shadowOffsetY: CGFloat = 0 {
        didSet {
            layer.shadowOffset.height = shadowOffsetY
        }
    }
}

//code source: https://github.com/gtokman/Login-Screen-UI/blob/master/LoginExample/DesignableView.swift
