//
//  StartPresenter.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import UIKit

class StartPresenter: NSObject {

    func tapStartButton() {
        // Count画面へ遷移.
        MainWireFrame.sharedInstance.pushCountViewController()
    }
    
}
