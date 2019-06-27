//
//  ViewController.swift
//  mvvmTest
//
//  Created by TONY on 12/06/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MainViewModel(self)
    }

    @IBAction func editAction(_ sender: UIBarButtonItem) {
        viewModel.editing()
    }
    
}

