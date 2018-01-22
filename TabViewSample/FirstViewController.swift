//
//  FirstViewController.swift
//  TabViewSample
//
//  Created by LEE on 2018/01/19.
//  Copyright © 2018年 Dead Poets Society. All rights reserved.
//

import UIKit
import WebKit

class FirstViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 表示するWEBサイトのURLを設定します。
        let url = URL(string: "https://www.google.com")
        let urlRequest = URLRequest(url: url!)
        // webViewで表示するWEBサイトの読み込みを開始します。
        webView.load(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

