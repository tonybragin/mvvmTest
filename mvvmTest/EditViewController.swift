//
//  EditViewController.swift
//  mvvmTest
//
//  Created by TONY on 12/06/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    var viewModel: EditViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nameButton(_ sender: UIButton) {
        guard let userName = sender.titleLabel?.text else {return}
        viewModel.changeName(userName)
        self.navigationController?.popViewController(animated: true)
    }
}
