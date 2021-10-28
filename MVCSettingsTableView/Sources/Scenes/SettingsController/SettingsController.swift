//
//  ViewController.swift
//  MVCSettingsTableView
//
//  Created by Denis Snezhko on 28.10.2021.
//

import UIKit

class SettingsController: UIViewController {

    //  MARK: - Elements
    
    var model: SettingsModel?
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

//  MARK: - Configuration

private extension SettingsController {
    func configureView() {
        
    }
}
