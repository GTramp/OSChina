//
//  AppDelegate.swift
//  OSChina
//
//  Created by walker on 2017/11/7.
//  Copyright © 2017年 walker. All rights reserved.
//

import UIKit
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //  初始化
        initialization()
        
        WANetworkTools.shared.loadData(method: HTTPMethod.get, url: URL(string:"https://httpbin.org/get")!, parameters: nil) { (resp, isSucceed) in
            QL2(resp)
        }
        
        return true
    }

}

// MARK: - Initialization
extension AppDelegate {
    
    /// 初始化
   private func initialization() -> Void {
        // 配置打印输出
        QorumLogs.enabled = true
        // 设置根控制器
        setupRootVC()
    
    }
    /// 设置根控制器
   private func setupRootVC() -> Void {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = WANetworkTools.shared.logan ? WATabBarController() : WALoginController()
        window?.makeKeyAndVisible()
    }
}
