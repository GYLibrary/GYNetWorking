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

    //试一下
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
        #if false

            //https://api.github.com/repos/GYLibrary/appApi/contents/export.json
            //将github作为自己的服务器
            //https://api.github.com/repos/ozner-app-ios-org/updateApi/contents/{}
            requestForJSONResult(GYNetWorkMethod.GET, url: "https://api.github.com/repos/ozner-app-ios-org/updateApi/contents/InesUpdateFile/inse.json", params: nil) { (result) in
            switch result! {
            case .sucess(let value):
                Print(value)
                let str = ((value as! [String:Any])["content"] as! String).replacingOccurrences(of: "\n", with: "")
                //解码
                let edcodedData = Data(base64Encoded: str, options: Data.Base64DecodingOptions.ignoreUnknownCharacters)
                let str2 = String(data: edcodedData!, encoding: String.Encoding.utf8)
                
                let data = str2?.data(using: String.Encoding.utf8)
                
                let dic = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as? [String:AnyObject]
                
                Print(dic!!["result"]!["version"]! as! String)

                
            case .failure(let error):
                Print(error)
            }
        }
            #endif
        
        requestForJSONResult(GYNetWorkMethod.POST, url: "https://app.kujiang.com/v1/book/read_new", params: ["auth_code":"a3a7e8cfef43441c3983f9e22865607f","book":"25129","chapter":"532841","is_vip":"1"]) { (result) in
            switch result! {
            case .sucess(let value):
                let jsonDic = value as! [String:AnyObject]
                Print(jsonDic["body"])
                
            case .failure(let error):
                Print(error)
                
            }
        }
        
        downLoad("http://dldir1.qq.com/qqfile/QQforMac/QQ_V4.2.4.dmg", params: nil) { (_, _, _) in
            
        }
        
        print("猪猪最帅")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

