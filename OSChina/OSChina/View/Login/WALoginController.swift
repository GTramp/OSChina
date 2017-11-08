//
//  WALoginController.swift
//  OSChina
//
//  Created by walker on 2017/11/8.
//  Copyright © 2017年 walker. All rights reserved.
//

import UIKit
import SnapKit
class WALoginController: UIViewController {
    
    // MARK: - 生命周期
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // 设置页面
        setupUI()
    }
    
    // MARK: - 懒加载控件
    // 背景图片
    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bg_login"))
        return imageView
    }()
    
    // logo
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo_osc"))
        return imageView
    }()
    
    // account
    lazy var accountFiled: UITextField = {
        let filed = WALoginTextFiled()
        filed.layer.cornerRadius = 20
        filed.layer.masksToBounds = true
        filed.layer.borderColor = UIColor.cyan.cgColor
        filed.layer.borderWidth = 2
        filed.attributedPlaceholder = NSAttributedString(string: "手机号或邮箱", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
        filed.font = UIFont.systemFont(ofSize: 18)
        filed.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        filed.leftViewMode = UITextFieldViewMode.always
        filed.leftView = UIImageView(image: UIImage(named: "ic_login_username"))
        return filed
    }()
    // password
    lazy var passwordFiled: UITextField = {
        let filed = WALoginTextFiled()
        filed.layer.cornerRadius = 20
        filed.layer.masksToBounds = true
        filed.layer.borderColor = UIColor.cyan.cgColor
        filed.layer.borderWidth = 2
        filed.attributedPlaceholder = NSAttributedString(string: "密码", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
        filed.font = UIFont.systemFont(ofSize: 18)
        filed.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        filed.leftViewMode = UITextFieldViewMode.always
        filed.leftView = UIImageView(image: UIImage(named: "ic_login_password"))
        return filed
    }()
}


// MARK: - 设置页面
extension WALoginController {
    
    /// 设置UI
    private func setupUI() {
        view.backgroundColor = UIColor.white
        addBackGroundImage()
        addBackLogoImage()
        addInputs()
    }
    
    /// input
    private func addInputs() {
        view.addSubview(accountFiled)
        view.addSubview(passwordFiled)
        
        accountFiled.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.top.equalTo(logoImageView.snp.bottom).offset(36)
            maker.height.equalTo(54)
            maker.left.equalToSuperview().offset(16)
            maker.right.equalToSuperview().offset(-16)
        }
        
        passwordFiled.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.top.equalTo(accountFiled.snp.bottom).offset(16)
            maker.height.equalTo(54)
            maker.left.equalToSuperview().offset(16)
            maker.right.equalToSuperview().offset(-16)
        }
    }
    /// logo
    private func addBackLogoImage(){
        view.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().offset(64)
        }
    }
    ///  背景图片
    private func addBackGroundImage(){
        view.addSubview(backgroundImageView)
        backgroundImageView.snp.makeConstraints { (maker) in
            maker.edges.equalToSuperview()
        }
    }
    
}
