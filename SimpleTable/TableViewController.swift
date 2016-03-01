//
//  TableViewController.swift
//  SimpleTable
//
//  Created by Bean on 16/3/1.
//  Copyright © 2016年 Bean. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let TAG_CELL_LABEL = 1
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : AnyObject? = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        var label = cell?.viewWithTag(TAG_CELL_LABEL) as! UILabel
        label.text = "Hello Bin"
        
        return cell as! UITableViewCell
    }
}
