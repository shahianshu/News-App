//
//  ViewController.swift
//  News App
//
//  Created by Anshu Shahi on 22/10/19.
//  Copyright © 2019 Anshu Shahi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {
    
    let api_key = "8764af48e8564aba9eccb02d2daafc1c"
    let url = "https://newsapi.org/v2/top-headlines?"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getNews(url : url , api_key : api_key)
    }


}


// MARk: - Networking

// write getNews function

func getNews(url : String , api_key : String ){
    let urlWithParam = url + "country=in&" + "apiKey=" + api_key 
    print(urlWithParam)
    Alamofire.request(urlWithParam).responseJSON { (response) in
        if response.result.isSuccess {
            print(response)
        }
    }
    

}


