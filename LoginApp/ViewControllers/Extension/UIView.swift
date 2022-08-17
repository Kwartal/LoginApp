//
//  UIView.swift
//  LoginApp
//
//  Created by Богдан Баринов on 18.08.2022.
//

import UIKit

extension UIView {
  public func addSubviews(_ subviews: UIView...) {
    subviews.forEach(addSubview)
  }
  
  public func addSubviewsList(_ views: [UIView]) {
    views.forEach { addSubview($0) }
  }

}
