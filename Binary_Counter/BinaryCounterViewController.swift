//
//  ViewController.swift
//  Binary_Counter
//
//  Created by Nishant Patel on 3/17/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class BinaryCounterViewController: UITableViewController, BinaryViewCellDelegate {
    
    var powerSize = 16
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return powerSize+1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == powerSize {
            let cell = tableView.dequeueReusableCell(withIdentifier: "totalCell", for: indexPath) as! TotalViewCell
            var sum = 0
            var cellText = 0
            for i in 0...indexPath.row-1 {
                cellText = Int(pow(Double(10),Double(i)))
                sum += cellText
            }
            cell.totalLabel.text = String(sum)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "binaryCell", for: indexPath) as! BinaryViewCell
        cell.delegate = self
        var cellText = 0
        for i in 0...indexPath.row {
            cellText = intmax_t(pow(Double(10),Double(i)))
        }
        cell.binaryLabel.text = String(cellText)
        
        return cell
    }
    
    
    
    func increaseButtonPressed(_ class: BinaryViewCell) {
        print("Button Increase")
        powerSize += 1
        print(powerSize)
        tableView.reloadData()
    }
    
    func decreaseButton(_ class: BinaryViewCell) {
        print("Button Decrease")
        powerSize -= 1
        print(powerSize)
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

