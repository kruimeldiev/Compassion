//
//  SearchResultTableViewDataSource.swift
//  Compassion
//
//  Created by Casper Daris on 22/04/2021.
//

import UIKit

class SearchResultTableViewDataSource: NSObject, UITableViewDataSource {
    
    var charitiesArray = [CharityModel]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        charitiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CharityTableViewCellId") as? CharityTableViewCell else {
            return .init()
        }
        
        let charity = charitiesArray[indexPath.row]
        
        cell.makeTableViewCell(charity: charity)
        
        return cell
    }
}
