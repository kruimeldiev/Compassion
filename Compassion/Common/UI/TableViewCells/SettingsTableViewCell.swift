//
//  SettingsTableViewCell.swift
//  Compassion
//
//  Created by Casper Daris on 16/04/2021.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    func buildTableViewCell(page: String) {
        self.label.text = page
    }
}
