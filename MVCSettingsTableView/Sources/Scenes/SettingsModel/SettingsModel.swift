//
//  SettingsModel.swift
//  MVCSettingsTableView
//
//  Created by Denis Snezhko on 28.10.2021.
//

import UIKit

final class SettingsModel {
    
    func createOptions() -> [Section] {
        return [
            
            // First section
            Section(title: "", option: [
                SettingsCellOption(title: "Авиарежим", additionLabel: "", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, isSwitchButton: true),
                SettingsCellOption(title: "Wi-Fi", additionLabel: "Выкл", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Bluetooth", additionLabel: "Вкл.", icon: UIImage(systemName: "iphone.homebutton.radiowaves.left.and.right"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Сотовая связь", additionLabel: "", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, isSwitchButton: false),
                SettingsCellOption(title: "Режим модема", additionLabel: "", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, isSwitchButton: false),
                SettingsCellOption(title: "VPN", additionLabel: "", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemBlue, isSwitchButton: true)
                
            ])
        ]
    }
}
