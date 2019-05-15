//
//  UINavigationControllerExtension.swift
//  Dragons
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

extension UINavigationController {
  
  func setup() {
    navigationBar.tintColor = .backButton
    navigationBar.titleTextAttributes = [
      NSAttributedString.Key.foregroundColor: UIColor.title,
      NSAttributedString.Key.font: UIFont.fontBold20
    ]
  }  
}
