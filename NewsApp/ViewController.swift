//
//  ViewController.swift
//  NewsApp
//
//  Created by hahahahahanananana on 2017/06/20.
//  Copyright © 2017年 片岡. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Kingfisher

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    var articleArray :[Article] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.dataSource = self
        table.delegate = self
        
        self.table.register(UINib(nibName: "CustomTableViewCell",bundle: nil), forCellReuseIdentifier: "customCell")
        
        fetch()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return articleArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell",for: indexPath) as! CustomTableViewCell
        
        
        let url = URL(string:articleArray[indexPath.row].urlToImage )
        cell.myImageview.kf.setImage(with: url)
        cell.myTitleLabel.text = articleArray[indexPath.row].title
        cell.myDedcriptionLabel.text = articleArray[indexPath.row].descriptionText
        
        return cell
    }
    
    func fetch () {
        
        Alamofire.request("https://newsapi.org/v1/articles?source=bbc-news&sortBy=top&apiKey=6b15ddbe776b44e791f2bfea3e1a18c9").responseJSON { response in
            
            let data = JSON(response.data)
            for i in data ["articles"].arrayValue{
                let article = Article(json : i)
                self.articleArray.append(article)
                
                
            }
        self.table.reloadData()
            
        }
    }
}


