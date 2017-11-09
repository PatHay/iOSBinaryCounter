//
//  BinaryTableViewCell.swift
//  Binary Counter
//
//  Created by Patrick Hayes on 11/9/17.
//  Copyright © 2017 Patrick Hayes. All rights reserved.
//

import UIKit

protocol BinaryTableViewCellDelegate: class {
    func valueChangedBy(value: Int)
} //this is to pass it back to the table view

class BinaryTableViewCell: UITableViewCell {

    @IBOutlet weak var valueLabel: UILabel!
    
    weak var delegate: BinaryTableViewCellDelegate? //optional because it cannot be set on initiliazation
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        
        var value = Int(valueLabel.text!)
        
        if sender.titleLabel!.text == "-"{
            value = -value!
        }
        
        delegate?.valueChangedBy(value: value!)
        
    }
    

}
