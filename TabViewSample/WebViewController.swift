//
//  WebViewController.swift
//  TabViewSample
//
//  Created by LEE on 2018/01/19.
//  Copyright © 2018年 Dead Poets Society. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate  {

    //MARK: Properties
    var webView: WKWebView!
    @IBOutlet weak var refreshButton: UIBarButtonItem!
    
    override func loadView() {
        super.loadView()
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialURL = URL(string: "https://www.apple.com")
        let request = URLRequest(url: initialURL!)
        webView.load(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
