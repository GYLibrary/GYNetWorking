//
//  GYNetWorkManager.swift
//  GYNetWorkING
//
//  Created by zhuguangyang on 16/10/26.
//  Copyright © 2016年 Giant. All rights reserved.
//

import Foundation

class GYNetWorkManager {
    
    let method: GYNetWorkMethod!
    let params: [String: Any]?
    let url:String!
    let callBack:RequestCompletion
    var request:URLRequest
    let session = URLSession.shared
    var task: URLSessionDataTask!
    
    init(url:String!, method: GYNetWorkMethod,params: [String: Any]?,callBack:@escaping RequestCompletion)
    {
        self.url = url
        self.method = method
        self.params = params
        self.callBack = callBack
        self.request = URLRequest.init(url: URL(string: url)!)
        
    }
    
    
    func buildRequest() {
        if self.method == .GET && self.params != nil {
            self.request = URLRequest.init(url: URL(string: self.url + "?" + GYParameterEncoding.convertSimpleParams(self.params))!)
        }
        request.httpMethod = self.method.rawValue
        
        if self.params != nil {
            request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        }
        
    }
    
    func buildBody() {
        if self.params != nil && self.method != .GET {
            self.request.httpBody = GYParameterEncoding.convertSimpleParams(self.params).data(using: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
        }
    }
    
    func fireTask() {
        
        task = session.dataTask(with: self.request, completionHandler: { (data, response, error) in
            self.callBack(data, response, error)
        })
        task.resume()
    }
    
    func startFire() {
        
        buildRequest()
        buildBody()
        fireTask()
        
    }
    
}
