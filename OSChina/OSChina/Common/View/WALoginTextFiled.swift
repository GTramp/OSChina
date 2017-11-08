//
//  WALoginTextFiled.swift
//  OSChina
//
//  Created by walker on 2017/11/8.
//  Copyright © 2017年 walker. All rights reserved.
//

import UIKit

class WALoginTextFiled: UITextField {
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 16, y: 16, width:22, height:22)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 38, y:bounds.origin.y, width: bounds.width, height:bounds.height)
    }
}
