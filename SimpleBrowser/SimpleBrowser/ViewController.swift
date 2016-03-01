//
//  ViewController.swift
//  SimpleBrowser
//
//  Created by Bean on 16/3/1.
//  Copyright © 2016年 Bean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var webView: UIWebView!
    /*!
    试用了一下 UIWebView 控件，教程上挺简单的一个控件用起来却并没有那么顺手
    写完之后现实白屏，结果是因为在iOS9 beta1中，苹果将原http协议改成了https协议，使用 TLS1.2 SSL加密请求数据。
    
    解决办法：
    
    在info.plist中添加
    <key>NSAppTransportSecurity</key><dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/></dict>
    
    - parameter sender: <#sender description#>
    */
    @IBAction func btnClicked(sender: AnyObject) {
      //  var url = NSURL(string: "http://www.baidu.com")
      //  var request = NSURLRequest(URL: url!)
      //  webView.loadRequest(request)
        webView.loadRequest(NSURLRequest(URL: NSURL(string: txtInput.text!)!))
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

