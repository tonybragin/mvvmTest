//
//  ViewModel.swift
//  mvvmTest
//
//  Created by TONY on 12/06/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class MainViewModel {
    var viewController: MainViewController
    let disposeBag = DisposeBag()
    
    init(_ viewController: MainViewController) {
        self.viewController = viewController
    }
    
    func editing() {
        let editVC = viewController.storyboard?.instantiateViewController(withIdentifier: "EditViewController") as! EditViewController
        editVC.viewModel = EditViewModel(editVC)
        
        editVC.viewModel.selectedUser.subscribe(onNext: { [weak self] user in
            self?.viewController.nameLabel.text = "User \(user)"
        }).disposed(by: disposeBag)
        
        viewController.navigationController?.pushViewController(editVC, animated: true)
    }
}
