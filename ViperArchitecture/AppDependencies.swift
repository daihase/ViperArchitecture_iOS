//
//  AppDependencies.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import UIKit

class AppDependencies: NSObject {

    override init() {
        super.init()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        MainWireFrame.sharedInstance.presentStartViewControllerFromWindow(window: window)
    }
}
