//
//  DemoCustomViewCell.swift
//  SheeeeeeeeetExample
//
//  Created by Daniel Saidi on 2018-10-08.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import Sheeeeeeeeet

/**
 This cell is used by the demo app, to provide a custom view
 in the `CustomActionSheet` demo sheet.
 */
class DemoCustomViewCell: ActionSheetItemCell, ActionSheetCustomItemCell {
    
    
    // MARK: - ActionSheetCustomItemCell
    
    static let nib: UINib = UINib(nibName: "DemoCustomViewCell", bundle: nil)
    static let defaultSize = CGSize(width: 100, height: 400)
    
    
    // MARK: - Properties
    
    var buttonTapAction: ((UIButton) -> ())?
    

    // MARK: - Outlets
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var centerButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    
    // MARK: - Actions
    
    @IBAction func buttonTapAction(_ sender: UIButton) {
        buttonTapAction?(sender)
    }
}