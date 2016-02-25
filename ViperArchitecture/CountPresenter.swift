//
//  CountPresenter.swift
//  ViperArchitecture
//
//  Created by Libra Studio, Inc. on 2016/02/25.
//  Copyright © 2016年 Libra Studio, Inc. All rights reserved.
//

import UIKit

class CountPresenter: NSObject, CountInteractorOutput {
    
    var view: CountViewInterface?
    var interactor: CountInteractorInput?
    var countFormatter: NSNumberFormatter?
    
    func updateView() {
        self.interactor?.requestCount()
    }
    
    func increment() {
        self.interactor?.increment()
    }
    
    func decrement() {
        self.interactor?.decrement()
    }
    
    // MARK: - CountInteractorOutput Inplements
    func updateCount(count: Int){
        self.view?.setCountText(String(count))
        self.view?.setDecrementEnabled(canDecrementCount(count))
    }
    
    func canDecrementCount(count: Int) -> Bool {
        return (count > 0)
    }
}
