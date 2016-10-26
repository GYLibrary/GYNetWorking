//
//  GYNetWork.swift
//  GYNetWorkING
//
//  Created by zhuguangyang on 16/10/26.
//  Copyright © 2016年 Giant. All rights reserved.
//

import UIKit


/// 请求结果回调
public typealias RequestCompletion = (_ data:Data?, _ response:URLResponse?,_ error: Error?) -> Void
/// 请求方式
///
/// - GET:  GET
/// - POST: POST
public enum GYNetWorkMethod: String {
    
    case GET = "GET"
    case POST = "POST"
}

public class GYNetWork{

    
  
    
    public class func request() {
        
        let session = URLSession.shared
        let request = URLRequest(url: URL(string:"http://baidu.com")!)
        
        let task = session.dataTask(with: request) { (data, response, error) in
            
            print("waif for 5 seconds!")
            sleep(5)
            let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(string)
            
        }
        
        //开始执行
        task.resume()
        
    }
    
    
    /// 网络请求
    ///
    /// - parameter method: 请求方式
    /// - parameter url:    URL
    open  class func request(method:String, url: String) {
        
        let session = URLSession.shared
        
        var request = URLRequest.init(url: URL(string: url)!)
        request.httpMethod = method
        request.httpShouldHandleCookies = false
        let task = session.dataTask(with: request) { (data, response, error) in
            
            print("waif for 5 seconds!")
            sleep(5)
            let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(string)
            
        }
        
        task.resume()
        
    }
    
    open  class func request(method: String, url: String,callback: @escaping (_ data:Data?,_ response:URLResponse?,_ error: Error?) -> Void) {
        
        let session = URLSession.shared
        
        var request = URLRequest.init(url: URL(string: url)!)
        request.httpMethod = method
        request.httpShouldHandleCookies = false
        let task = session.dataTask(with: request) { (data, response, error) in
            callback(data, response, error)
        }
        
        task.resume()
        
    }
    
    
    /// 网络请求方式
    ///
    /// - parameter method:   请求方式
    /// - parameter url:      url
    /// - parameter params:   请求参数
    /// - parameter callBack: 返回请求结果
    open class func request(method: GYNetWorkMethod, url:String,params: [String: Any],callBack: @escaping RequestCompletion) {
        
        let session = URLSession.shared
        
        var newURl = url
        
        switch method {
        case .GET:
            //password=Optional%28%22666666%22%29&phone=Optional%28%2215026981614%22%29
            newURl += "?" + GYParameterEncoding.convertParams(params).replacingOccurrences(of: "Optional", with: "")
        case .POST:
            break
        }
        print(newURl)
        print(GYParameterEncoding.convertParams(params))
        var request = URLRequest.init(url: URL(string: newURl)!)
        request.httpMethod = method.rawValue
      
        if method == .POST {
            request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpBody = GYParameterEncoding.convertParams(params).data(using: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
        }
        
        let task = session.dataTask(with: request) { (data, response, error) in
            callBack(data, response, error)
            
        }
        
        task.resume()
        
    }
    
}