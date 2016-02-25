//
//  MainWireFrame.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import UIKit

class MainWireFrame: NSObject {

    var startViewController: StartViewController?
    var navigationController: UINavigationController?
    static var sharedInstance: MainWireFrame = {
        return MainWireFrame()
    }()
    
    override init() {
        super.init()
    }
    
    // スタートページ表示.
    func presentStartViewControllerFromWindow(window window: UIWindow) {
        // Storyboard生成クラスからStartViewControllerインスタンスを取得.
        let startViewController = StoryboardBuilder.sharedInstance.startViewController()
        startViewController.startEventHandler = StartPresenter()
        self.startViewController = startViewController
        self.navigationController = window.rootViewController as? UINavigationController
        self.navigationController?.viewControllers = [self.startViewController!]
    }
    
    // カウントページ表示.
    func pushCountViewController() {
        let countViewController = StoryboardBuilder.sharedInstance.countViewController()
        
    }
}
