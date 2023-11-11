//
//  TimelineTableViewDataSource.swift
//  Compassion
//
//  Created by Casper Daris on 30/04/2021.
//

import UIKit

class TimelineTableViewDataSource: NSObject, UITableViewDataSource {
    
    var favoritesArray = [CharityModel]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoritesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CharityTableViewCellId") as? CharityTableViewCell else {
            return .init()
        }
        
        let charity = favoritesArray[indexPath.row]
        
        cell.makeTableViewCell(charity: charity)
        
        return cell
    }
}
