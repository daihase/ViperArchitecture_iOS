//
//  CountViewController.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import UIKit

class CountViewController: UIViewController, CountViewInterface {

    var countHandler: CountPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - CountViewInterface implements
    
    func setCountText(countText: String) {
        <#code#>
    }
    
    func setDecrementEnabled(enabled: Bool) {
        <#code#>
    }
    
    // MARK: - Actions
    
    // 数字増加.
    @IBAction func increment(sender: AnyObject) {
       self.countHandler?.increment()
    }
    
    // 数字減少.
    @IBAction func decrement(sender: AnyObject) {
        self.countHandler?.decrement()
    }
    
}
