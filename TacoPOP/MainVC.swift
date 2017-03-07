//
//  MainVC.swift
//  TacoPOP
//
//  Created by Sean Perez on 3/6/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.addDropShadow()
    }

}

