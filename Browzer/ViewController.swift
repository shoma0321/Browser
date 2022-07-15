//
//  ViewController.swift
//  Browzer
//
//  Created by 伊藤 奨真 on 2022/07/15.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let url = URL(string: "http://www.google.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        webView.navigationDelegate = self
    }
    
    @IBAction func reloadTapped(_ sender: UIButton) {
        webView.reload()
    }
    
    @IBAction func backTapped(_ sender: UIButton) {
        webView.goBack()
    }
    
    
    @IBAction func forwardTapped(_ sender: UIButton) {
        webView.goForward()
    }
    
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start!")
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Finish!")
    }
    

}

