//
//  ViewController.swift
//  NewsApp
//
//  Created by hahahahahanananana on 2017/06/20.
//  Copyright © 2017年 片岡. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table:UITableView!
    let image1 = UIImage(named:"cow01.jpg")
    let image2 = UIImage(named:"shutterstock_128724608-1-690x491.jpg")
    let image3 = UIImage(named:"s_0043.jpg")
    let image4 = UIImage(named:"jidori06.jpg")
    
    let imageNames = ["shutterstock_128724608-1-690x491.jpg","cow01.jpg","s_0043.jpg","jidori06.jpg"]
    
    let imageTitles = ["牛","牛肉","鶏","鶏肉"]
    let imageDecriptions: [String] = [
        "見てくる牛",
        "牛の肉",
        "横向きの鶏",
        "鶏の肉"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.dataSource = self
        table.delegate = self
        self.table.register(UINib(nibName: "CustomTableViewCell",bundle: nil), forCellReuseIdentifier: "customCell")
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return imageNames.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell",for: indexPath) as! CustomTableViewCell
        
        cell.myImageview.image = UIImage(named: imageNames[indexPath.row])
        cell.myTitleLabel.text = imageTitles[indexPath.row]
        cell.myDedcriptionLabel.text = imageDecriptions[indexPath.row]
        
        return cell
    }
    
    
}



