//
//  ViewController.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import Foundation
import UIKit

class StartViewController: UIViewController  {

    var startEventHandler: StartPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Startボタン押下.
    @IBAction func tapStartButton(sender: AnyObject) {
        startEventHandler?.tapStartButton()
    }
}

