//
//  ViewModel.swift
//  NoBindingMVVMSample
//
//  Created by UetaMasamichi on 2016/12/10.
//  Copyright © 2016 Masmichi Ueta. All rights reserved.
//

import Foundation

protocol ViewModel {
    associatedtype State
    var stateDidUpdate: ((State) -> Void)? { get set }
}
