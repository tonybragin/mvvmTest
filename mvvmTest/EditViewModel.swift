//
//  EditViewModel.swift
//  mvvmTest
//
//  Created by TONY on 12/06/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class EditViewModel {
    var viewController: EditViewController
    
    private let selectedUserName = BehaviorRelay(value: "User")
    var selectedUser:Observable<String> {
        return selectedUserName.asObservable()
    }
    
    init(_ viewController: EditViewController) {
        self.viewController = viewController
    }
    
    func changeName(_ name: String) {
        selectedUserName.accept(name)
    }
}
