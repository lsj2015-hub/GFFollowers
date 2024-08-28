//
//  UIView+Ext.swift
//  GFFollowers
//
//  Created by Sean Lee on 8/28/24.
//

import UIKit

extension UIView {
  
  func addSubviews(_ views: UIView...) {
    for view in views { addSubview(view) }
  }
}

