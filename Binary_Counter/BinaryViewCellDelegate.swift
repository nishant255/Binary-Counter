//
//  BinaryViewCellDelegate.swift
//  Binary_Counter
//
//  Created by Nishant Patel on 3/20/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import Foundation

protocol BinaryViewCellDelegate: class {
    func increaseButtonPressed(_ class: BinaryViewCell)
    func decreaseButton(_ class: BinaryViewCell)
}
