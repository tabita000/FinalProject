//
//  RotatingButton.swift
//  FinalProject
//
//  Created by Tabita Sadiq on 4/2/24.
//

import Foundation
import UIKit

class RotatingButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView?.transform = transform
    }
}
