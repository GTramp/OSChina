//
//  WATabBarController.swift
//  OSChina
//
//  Created by walker on 2017/11/7.
//  Copyright © 2017年 walker. All rights reserved.
//

import UIKit

class WATabBarController: UITabBarController {
    
     @objc private func clickComposeButton() {
        print("点击撰写按钮")
    }

    // MARK: - 视图周期
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 设置UI
        setupUI()
        // 设置代理
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBar.bringSubview(toFront: composeButton)
    }
    
    // MARK: - 懒加载控件
    private  lazy var composeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named:"ic_nav_add"), for: UIControlState.normal)
        button.setImage(UIImage(named:"ic_nav_add_actived"), for: UIControlState.highlighted)
        button.setImage(UIImage(named:"ic_nav_add_actived"), for: UIControlState.selected)
        button.sizeToFit()
        button.addTarget(self, action:#selector(WATabBarController.clickComposeButton), for: UIControlEvents.touchUpInside)
        return button
    }()
}

// MARK: - 设置UI
extension WATabBarController {
    
    /// 设置UI
    private  func setupUI() -> Void {
        // 设置子控制器
        addChildViewControllers()
        // 设置撰写按钮
        addComposeButton()
    }
    
    /// 添加撰写按钮
    private func addComposeButton() {
        tabBar.addSubview(composeButton)
        let width = view.bounds.width / CGFloat(childViewControllers.count)
        composeButton.frame = tabBar.bounds.insetBy(dx: 2*width, dy: 0)
    }
    
    /// 添加子控制器
    private func addChildViewControllers() {
        tabBar.tintColor = UIColor.green
        addChildViewController(controller: WAColligateController(), name: "综合", imageName: "tabbar-news")
        addChildViewController(controller: WATweetController(), name: "动弹", imageName: "tabbar-tweet")
        addChildViewController(WAViewController())
        addChildViewController(controller: WAColligateController(), name: "发现", imageName: "tabbar-discover")
        addChildViewController(controller: WAColligateController(), name: "我的", imageName: "tabbar-me")
    }
    
    /// 设置子控制器
    ///
    /// - Parameters:
    ///   - controller: 子控制器
    ///   - name: 名称
    ///   - imageName: 图片名称
    private func addChildViewController(controller:WAViewController, name:String, imageName:String) {
        controller.title = name
        let navController = UINavigationController(rootViewController: controller)
        navController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        navController.tabBarItem.selectedImage = UIImage(named: imageName + "-selected")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        addChildViewController(navController)
    }
}

// MARK: - UITabBarDelegate
extension WATabBarController:UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let index = tabBarController.childViewControllers.index(of: viewController) {
            if index == 2 {
                return false
            }
        }
        return true
    }
}
