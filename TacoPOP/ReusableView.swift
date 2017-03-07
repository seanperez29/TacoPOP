//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Sean Perez on 3/6/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
