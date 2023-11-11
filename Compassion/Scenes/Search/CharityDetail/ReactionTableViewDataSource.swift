//
//  ReactionTableViewDataSource.swift
//  Compassion
//
//  Created by Casper Daris on 09/05/2021.
//

import UIKit

//sourcery: AutoMockable
protocol ReactionTableViewDataSourceProtocol {
    
}

class ReactionTableViewDataSource: NSObject,UITableViewDataSource, ReactionTableViewDataSourceProtocol {
    
    var reactionArray = [ReactionModel]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        reactionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReactionTableViewCellId") as? ReactionTableViewCell else {
            return .init()
        }
        
        let reaction = reactionArray[indexPath.row]
        
        cell.makeTableViewCell(reaction: reaction)
        
        return cell
    }
}
