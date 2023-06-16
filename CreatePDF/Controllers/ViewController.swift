//
//  ViewController.swift
//  CreatePDF
//
//  Created by Nikolai  on 16.06.2023.
//

import UIKit

class ViewController: UIViewController {

    private var mainView: MainView? {
        view as? MainView
    }
    
    override func loadView() {
        self.view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

