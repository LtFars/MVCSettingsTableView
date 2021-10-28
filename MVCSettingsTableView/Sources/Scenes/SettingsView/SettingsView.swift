//
//  SettingsView.swift
//  MVCSettingsTableView
//
//  Created by Denis Snezhko on 28.10.2021.
//

import UIKit

class SettingsView: UIView {
    
    //  MARK: - Configuration
    
    func configureView(with model: [Section]) {
        self.models = model
    }
    
    // MARK: - Private properties
    
    private var models = [Section]()
    
    //  MARK: - Elements
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .white
        //table.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifier)
        return tableView
    }()
    
    //  MARK: - Initial
    
    init() {
        super.init(frame: .zero)
        setupHierarchy()
        setupLayots()
        setupDelegates()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //  MARK: - Private functions
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayots() {
        //tableView.frame = bounds
    }
    
    private func setupDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

//  MARK: - UITableViewDataSource

extension SettingsView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models[section].option.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

//  MARK: - UITableViewDelegate

extension SettingsView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //  TODO: create tappeble cells
    }
}
