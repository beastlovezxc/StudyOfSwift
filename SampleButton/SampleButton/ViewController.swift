//
//  ViewController.swift
//  SampleButton
//
//  Created by Bean on 16/1/16.
//  Copyright © 2016年 Bean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var Label1: UILabel!

    @IBAction func clickToChange(sender: AnyObject) {
        count++
        if count % 2 != 0 {
        self.Label1.text = "Hello World!"
        } else {
            self.Label1.text = "Good-Bye World"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

