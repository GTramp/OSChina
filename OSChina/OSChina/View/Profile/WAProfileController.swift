//
//  WAProfileController.swift
//  OSChina
//
//  Created by walker on 2017/11/7.
//  Copyright © 2017年 walker. All rights reserved.
//

import UIKit

class WAProfileController: WAViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // 设置UI
        setupUI()
    }
    
}

// MARK: - 设置页面
extension WAProfileController {
    
    /// 设置UI
    private func setupUI() {
        // 设置导航栏
        setupNavigation()
    }
    
    /// 设置导航栏
    private func setupNavigation() {
        let searchButton = UIButton()
        searchButton.setImage(UIImage(named:"sidemenu_setting"), for: UIControlState.normal)
        searchButton.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: searchButton)
        let QRButton = UIButton()
        QRButton.setImage(UIImage(named:"scan"), for: UIControlState.normal)
        QRButton.sizeToFit()
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: QRButton)
    }
}
