//
//  StoryboardBuilder.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import UIKit

class StoryboardBuilder: NSObject {
    
    var mainStoryboard: UIStoryboard?
    
    static var sharedInstance: StoryboardBuilder = {
        return StoryboardBuilder()
    }()
    
    override init() {
        super.init()
        mainStoryboard = StoryboardBuilder.createMainStoryboard()
    }
    
    class func storyboardWithIdentifier(identifier identifier: String) -> UIStoryboard {
        return UIStoryboard(name: identifier, bundle: NSBundle.mainBundle())
    }
    
    class func createMainStoryboard() -> UIStoryboard {
        return StoryboardBuilder.storyboardWithIdentifier(identifier: "Main")
    }
    
    // スタート画面のViewControllerを返す.
    func startViewController() -> StartViewController {
        return mainStoryboard?.instantiateViewControllerWithIdentifier("StartViewController") as! StartViewController
    }
    
    // カウント画面のViewControllerを返す.
    func countViewController() -> CountViewController {
        return mainStoryboard?.instantiateViewControllerWithIdentifier("CountViewController")
            as! CountViewController
    }
}
