//
//  WATabBarController.swift
//  OSChina
//
//  Created by walker on 2017/11/7.
//  Copyright © 2017年 walker. All rights reserved.
//

import UIKit

class WATabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
}

// MARK: - 设置UI
extension WATabBarController {
    
    /// 设置UI
    private  func setupUI() -> Void {
        view.backgroundColor = UIColor.blue
    }
}
