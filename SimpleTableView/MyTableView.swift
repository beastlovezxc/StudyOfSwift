//
//  MyTableView.swift
//  SimpleTableView
//
//  Created by Bean on 16/3/1.
//  Copyright © 2016年 Bean. All rights reserved.
//

import UIKit

class MyTableView: UITableView, UITableViewDataSource {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.dataSource = self
    }
    let TAG_CELL_LABEL = 1
    let dataArr = ["hello", "Bin", "Chen"]
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        
        var label = cell!.viewWithTag(TAG_CELL_LABEL) as! UILabel
        label.text = dataArr[indexPath.row]
       // label.text = "Hello"
        return cell! as UITableViewCell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}
