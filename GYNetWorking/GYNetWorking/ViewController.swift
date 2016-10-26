//
//  ViewController.swift
//  GYNetWorkING
//
//  Created by zhuguangyang on 16/10/26.
//  Copyright © 2016年 Giant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DW: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startAction(_ sender: AnyObject) {
        
        
//        GYNetWork.request()
//        GYNetWork.request(method: "Get", url: "http://baidu.com")
        
//        GYNetWork.request(method: "GET", url: "http://baidu.com") { (data, response, error) in
//            print(NSString(data: data! as Data, encoding: String.Encoding.utf8.rawValue))
//        }

        GYNetWork.request(method: GYNetWorkMethod.GET, url: "http://wechat.hoyofuwu.com/FamilyAccount/AppLogin", params: ["phone": "15026981614","password":"666666"]) { (data, response, error) in
            print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
//            print(response)
            
        }
        print("猪猪最帅")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

