//
//  CustomView.swift
//  IBDesignableInspectable
//
//  Created by Yiyin Shen on 1/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
open class CustomView: UIView {
    @IBInspectable var bgCorlo: UIColor? {
        get {
            return backgroundColor
        }
        set {
            backgroundColor = newValue
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            return layer.borderColor = borderColor?.cgColor
        }
    }
}
