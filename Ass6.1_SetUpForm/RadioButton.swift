//
//  RadioButton.swift
//  Ass6.1_SetUpForm
//
//  Created by user228139 on 11/15/22.
//

import UIKit

class RadioButton: NSObject {
    var buttonsArray: [UIButton]! {
        didSet {
            for b in buttonsArray {
                b.setImage(UIImage(named: "radioOff"), for: .normal)
                b.setImage(UIImage(named: "radioOn"), for: .selected)
            }
        }
    }
    var selectedButton: UIButton?
    
    func buttonArrayUpdated(buttonSelected: UIButton) {
        for b in buttonsArray {
            if b == buttonSelected {
                selectedButton = b
                b.isSelected = true
            } else {
                b.isSelected = false
            }
        }
    }

}
