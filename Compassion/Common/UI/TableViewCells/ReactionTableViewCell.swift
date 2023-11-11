//
//  ReactionTableViewCell.swift
//  Compassion
//
//  Created by Casper Daris on 09/05/2021.
//

import UIKit

class ReactionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var reactionCardView: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var reactionLabel: UILabel!
    
    func makeTableViewCell(reaction: ReactionModel) {
        reactionCardView.addShadowToView(color: .black, offset: .zero, opacity: 0.3, radius: 2)
        reactionCardView.layer.cornerRadius = 8
        userNameLabel.text = reaction.userName
        dateLabel.text = reaction.date
        reactionLabel.text = reaction.reaction
    }
}
