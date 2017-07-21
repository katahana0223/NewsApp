//
//  Article.swift
//  NewsApp
//
//  Created by hahahahahanananana on 2017/07/11.
//  Copyright © 2017年 片岡. All rights reserved.
//

import UIKit
import SwiftyJSON
class Article: NSObject {
    
    var  author : String = ""
    var title : String = ""
    var descriptionText : String = ""
    var url : String = ""
    var urlToImage : String = ""
    var publishedAt : String = ""
    
    init(json:JSON){
        self.author = json["author"].stringValue
        self.title = json["title"].stringValue
        self.descriptionText = json["description"].stringValue
        self.url = json["url"].stringValue
        self.urlToImage = json["urlToImage"].stringValue
        self.publishedAt = json["publishedAt"].stringValue
    }
    

}
