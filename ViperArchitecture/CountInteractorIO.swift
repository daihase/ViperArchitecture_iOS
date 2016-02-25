//
//  CountInteractorIO.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import Foundation

protocol CountInteractorInput {
    func requestCount()
    func increment()
    func decrement()
}

protocol CountInteractorOutput {
    func updateCount(count: Int)
}