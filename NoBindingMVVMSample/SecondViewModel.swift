//
//  SecondViewModel.swift
//  NoBindingMVVMSample
//
//  Created by UetaMasamichi on 2016/12/10.
//  Copyright © 2016 Masmichi Ueta. All rights reserved.
//

import Foundation

enum SecondViewModelState {
    
}

class SecondViewModel: ViewModel {
    
    var text: String
    
    var stateDidUpdate: ((SecondViewModelState) -> Void)?
    
    init(text: String) {
        self.text = text
    }
}
