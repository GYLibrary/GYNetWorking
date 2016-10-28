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

        
//        GYNetWork.request(method: GYNetWorkMethod.POST, url: "http://m.geeboo.com/selection/cGetArticleList.go", params: "articleType=0&nowPage=1&onePageCount=10&terminalType=4&versionNumber=373") { (data, response, error) in
//            do {
//                let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as? NSDictionary
//                print(json)
//                print(json?["flag"])
//            } catch {
//                
//            }
//            print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
//        }
        

        
//        GYNetWork.request(method: GYNetWorkMethod.GET, url: "www.baidu.com", params: ["phone":"XXX","password":"666666"]) { (data, response, error) in
//            print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
//
//        }
        
//        NetWorkManager.GET(url: "http://baidu.com", callBack: { (data, response, error) in
//            
//            }
//        NetWorkManager.GET(url: "http://pitayaswift.sinaapp.com/pitaya.php") { (data, response, error) in
//            
//            if data != nil {
//                 print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
//            }
//            if response != nil {
//                print(response)
//            }
//            if error != nil {
//                print(error)
//            }
//            
//        }
//        
        
//        NetWorkManager.POST(url: "http://wechat.hoyofuwu.com/FamilyAccount/AppLogin", params: ["phone":"15221981520","password":"666666"]) { (data, response, error) in
//            if data != nil {
//                print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
//            }
//            if response != nil {
//                //服务器相关信息
//                print(response)
//            }
//            if error != nil {
//                //错误描述
//                print(error)
//            }
//        }
//
//        NetWorkManager.POST(url: "http://m.geeboo.com/selection/cGetArticleList.go", params: ["phone":"111","password":"666666"]) { (data, response, error) in
//            if data != nil {
//                print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
//            }
//            if response != nil {
//                //服务器相关信息
//                print(response)
//            }
//            if error != nil {
//                //错误描述
//                print(error)
//            }
//        }
        
        #if false
        request(GYNetWorkMethod.GET, url: "http://m.geeboo.com/selection/cGetArticleList.g", params: nil) { (data, response, error) in
            
                            if data != nil {
                                do {
                                    let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as? NSDictionary
                                    print(json)
                                    print(json?["state"])
                                } catch {
                                    
                                }
                            }
                            if response != nil {
                                //服务器相关信息
                                print(response)
                            }
                            if error != nil {
                                //错误描述
                                print(error)
                            }

        }
        #endif
        
        requestForJSONResult(GYNetWorkMethod.GET, url: "http://m.geeboo.com/selection/cGetArticleList.g", params: ["phone":"XXXX","password":"666666"]) { (result) in

            switch result! {
            case .sucess(let value):
                print(value)
            case .failure(let error):
                print(error)
            }
        }
        
        print("猪猪最帅")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

