//
//  ViewController.swift
//  gba-swift
//
//  Created by ruyigou on 2018/6/26.
//  Copyright © 2018年 ruyigou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        let arm = ARMCoreArm()
        arm.test()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

