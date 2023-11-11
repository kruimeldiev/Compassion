//
//  SettingsTableViewDataSource.swift
//  Compassion
//
//  Created by Casper Daris on 16/04/2021.
//

import UIKit

class SettingsTableViewDataSource: NSObject, UITableViewDataSource {
    
    /// Arrays containing all the items for the table view
    private let basicItems = ["Mijn account",
                              "Locatie instellingen"]
    private let aboutAppItems = ["Gebruiksvoorwaarden",
                                 "Privacyverklaring",
                                 "Over de app"]
    private let logoutItem = ["Uitloggen"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0:
                return basicItems.count
            case 1:
                return aboutAppItems.count
            default:
                return logoutItem.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCellId") as? SettingsTableViewCell else {
            return .init()
        }
        switch indexPath.section {
            case 0:
                cell.buildTableViewCell(page: basicItems[indexPath.row])
            case 1:
                cell.buildTableViewCell(page: aboutAppItems[indexPath.row])
            default:
                cell.buildTableViewCell(page: logoutItem[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
}
