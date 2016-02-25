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
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var incrementButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.countLabel.text = "0"
    }
    
    override func viewWillAppear(animated: Bool) {
        self.countHandler?.updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - CountViewInterface implements
    
    func setCountText(countText: String) {
        self.countLabel.text = countText
    }
    
    // Labelの数字が0以下ならDecrementButtonがグレーアウト.
    func setDecrementEnabled(enabled: Bool) {
        self.decrementButton.enabled = enabled
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
