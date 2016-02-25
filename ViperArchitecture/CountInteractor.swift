//
//  CountInteractor.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import UIKit

class CountInteractor: NSObject, CountInteractorInput {
    
    var count: Int = 0
    var output: CountInteractorOutput?
    
    // MARK: - COuntInteractorInput Implements
    
    func requestCount() {
        self.sendCount()
    }
    
    func increment() {
        self.count++
        self.sendCount()
    }
    
    func decrement() {
        self.count--
        self.sendCount()
    }
    
    func sendCount() {
        self.output?.updateCount(self.count)
    }
}
