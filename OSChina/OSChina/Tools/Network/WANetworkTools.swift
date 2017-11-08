//
//  WANetworkTools.swift
//  OSChina
//
//  Created by walker on 2017/11/8.
//  Copyright © 2017年 walker. All rights reserved.
//

import Foundation
import Alamofire

/// WANetworkTools
class WANetworkTools: NSObject {
    
    /// 单例对象
    static let shared = WANetworkTools()
    // 登陆状态
    var logan:Bool = false
    
    // 封锁入口
    private override init() {}
    
    /// 请求网络数据
    ///
    /// - Parameters:
    ///   - method: 请求类型
    ///   - url: 请求地址
    ///   - parameters: 请求参数
    ///   - completion: 完成回掉
    func loadData(method:HTTPMethod , url:URLConvertible ,  parameters:Parameters?,completion:((_ resp : Any, _ issSucceed:Bool)-> Void)) {
        Alamofire.request(url, method: method, parameters: parameters).responseJSON { (response) in
            QL2(response.result)
            
        }
    }
}

// MARK: - WANetworkTools Extension
extension WANetworkTools {
    
}
