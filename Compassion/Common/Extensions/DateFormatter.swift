//
//  DateFormatter.swift
//  Compassion
//
//  Created by Casper Daris on 10/05/2021.
//

import Foundation

extension Date {
    func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
