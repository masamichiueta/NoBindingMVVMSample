//
//  FirstViewModel.swift
//  NoBindingMVVMSample
//
//  Created by UetaMasamichi on 2016/12/10.
//  Copyright © 2016 Masmichi Ueta. All rights reserved.
//

import Foundation

enum FirstViewModelState {
    case segmentValueChanged(Int)
}

class FirstViewModel: ViewModel {
    
    var selectedSegment: Int = 0
    
    var stateDidUpdate: ((FirstViewModelState) -> Void)?
    
    func updateSelectedSegment(selectedSegment: Int) {
        self.selectedSegment = selectedSegment
        self.stateDidUpdate?(.segmentValueChanged(selectedSegment))
    }
}
