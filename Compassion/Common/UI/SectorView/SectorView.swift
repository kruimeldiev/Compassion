//
//  SectorView.swift
//  Compassion
//
//  Created by Casper Daris on 23/04/2021.
//

import UIKit

@IBDesignable
class SectorView: UIView {
    
    private var contentView: UIView?
    
    @IBOutlet weak var sectorNameLabel: UILabel!
    
    @IBInspectable
    var nibName: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }
    
    func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else { return nil }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)
            .first as? UIView
    }
    
    func configure(sector: String) {
        sectorNameLabel.text = sector
        contentView?.layer.cornerRadius = 4
        
        /// Depending on the sector, change the background color
        switch sector {
            case "Onderwijs":
                contentView?.backgroundColor = UIColor(named: "OnderwijsColor")
            case "Noodhulp":
                contentView?.backgroundColor = UIColor(named: "NoodhulpColor")
            case "Cultuur":
                contentView?.backgroundColor = UIColor(named: "CultuurColor")
            case "Gezondheidszorg":
                contentView?.backgroundColor = UIColor(named: "GezondheidszorgColor")
            case "Dierenwelzijn":
                contentView?.backgroundColor = UIColor(named: "DierenwelzijnColor")
            case "Religie":
                contentView?.backgroundColor = UIColor(named: "ReligieColor")
            case "Klimaat":
                contentView?.backgroundColor = UIColor(named: "KlimaatColor")
            case "Onderzoek":
                contentView?.backgroundColor = UIColor(named: "OnderzoekColor")
            case "Zorgverlening":
                contentView?.backgroundColor = UIColor(named: "ZorgverleningColor")
            case "Ontwikkelingshulp":
                contentView?.backgroundColor = UIColor(named: "OntwikkelingshulpColor")
            case "Natuurbehoud":
                contentView?.backgroundColor = UIColor(named: "NatuurbehoudColor")
            default:
                contentView?.backgroundColor = UIColor.blue
        }
        
        
    }
}
