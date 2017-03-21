//
//  BinaryViewCell.swift
//  Binary_Counter
//
//  Created by Nishant Patel on 3/20/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class BinaryViewCell: UITableViewCell {

    weak var delegate: BinaryViewCellDelegate?
    @IBOutlet weak var binaryLabel: UILabel!
    
    @IBAction func increaseButtonPressed(_ sender: UIButton) {
        print("delegate inc")
        
        if let dTest = delegate {
            print(dTest)
        }else{
            print("This is delegate is not set")
        }
        
        delegate?.increaseButtonPressed(self)
    }
    
    @IBAction func decreaseButton(_ sender: UIButton) {
        print("Delegating Dec")
        delegate?.decreaseButton(self)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
