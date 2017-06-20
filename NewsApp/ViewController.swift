//
//  ViewController.swift
//  NewsApp
//
//  Created by hahahahahanananana on 2017/06/20.
//  Copyright © 2017年 片岡. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var table:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt  indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell? .textLabel?.text = "aaa"
        return cell!
        
    }
}



