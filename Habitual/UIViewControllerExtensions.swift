//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Krystal Galdamez on 3/21/23.
//

import UIKit

extension UIViewController {
  static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
  }
}
