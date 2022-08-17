//
//  UILabel.swift
//  LoginApp
//
//  Created by Богдан Баринов on 17.08.2022.
//

import UIKit

extension UILabel {
    convenience init(textColor: UIColor? = .blue, font: UIFont? = .systemFont(ofSize: 20)) {
        self.init()
        self.textColor = textColor
        self.font = font
    }
    
}

