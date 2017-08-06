//
//  NextViewController.swift
//  NewsApp
//
//  Created by hahahahahanananana on 2017/08/05.
//  Copyright © 2017年 片岡. All rights reserved.
//

import UIKit
import WebKit
class NextViewController: UIViewController {
    
    
    @IBOutlet var myDedcriptionLabel:UILabel!
    var text: String?
    var article: Article!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webview = UIWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        let url = URL(string: article.url)!
        let urlRequest = URLRequest(url: url)
        webview.loadRequest(urlRequest)
        view.addSubview(webview)
        view.sendSubview(toBack: webview)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func back(){
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func share(){
        let shareText:String = ""
        let shareWebsite = URL(string: article.url)
        let activityItems = [shareWebsite]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        
        
        let excludedActivityTypes = [
            UIActivityType.postToWeibo,
            UIActivityType.saveToCameraRoll,
            UIActivityType.print
        ]
        
        activityVC.excludedActivityTypes = excludedActivityTypes
        
        self.present(activityVC, animated: true, completion: nil)
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
