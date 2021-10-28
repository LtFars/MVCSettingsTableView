//
//  ModelStructure.swift
//  MVCSettingsTableView
//
//  Created by Denis Snezhko on 28.10.2021.
//

import UIKit

struct Section {
    let title: String
    let option: [SettingsCellOption]
}

struct SettingsCellOption {
    let title: String
    let additionLabel: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    var isSwitchButton: Bool
}
