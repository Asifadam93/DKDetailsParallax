//
//  FlatDarkSimpleLabelCell.swift
//  iOSeries
//
//  Created by Pierre on 15/01/2017.
//  Copyright © 2017 Pierre Boudon. All rights reserved.
//

import UIKit

open class FlatDarkSimpleLabelCell: UITableViewCell {

    // MARK: - Private Constants
    public static let defaultHeight: CGFloat = 44
    
    
    // MARK: - Private Variables
    public var primaryColor = UIColor.white
    public var secondaryColor = UIColor.gray
    
    
    // MARK: - IBOutlets
    @IBOutlet public weak var contentLabel: UILabel!
    
    
    // MARK: - IBActions
    
    
    // MARK: - "Default" Methods
    override open func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Delegates
    
    
    // MARK: - Personnal Delegates
    
    
    // MARK: - Personnal Methods
    open static func simpleCell(withPrimaryColor: UIColor?, andSecondaryColor: UIColor?) -> FlatDarkSimpleLabelCell {
        // Call other constructor with default value
        return simpleCell(withPrimaryColor: withPrimaryColor, andSecondaryColor: andSecondaryColor, wantsEmptyCell: false)
    }
    
    open static func simpleCell(withPrimaryColor: UIColor?, andSecondaryColor: UIColor?, wantsEmptyCell: Bool) -> FlatDarkSimpleLabelCell {
        // Retrieve cell
        let nibs = DKDetailsParallax.bundle()?.loadNibNamed("FlatDarkSimpleLabelCell", owner: self, options: nil)
        let cell: FlatDarkSimpleLabelCell = nibs![0] as! FlatDarkSimpleLabelCell
        cell.selectionStyle = .none
        
        // Set colors
        if let p = withPrimaryColor {
            cell.primaryColor = p
        }
        
        if let s = andSecondaryColor {
            cell.secondaryColor = s
        }
        
        if wantsEmptyCell {
            // Hide content label
            cell.contentLabel.isHidden = true
        }
        
        return cell
    }
    
}
