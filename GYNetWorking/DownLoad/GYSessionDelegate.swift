//
//  GYSessionDelegate.swift
//  GYNetWorking
//
//  Created by ZGY on 2017/3/7.
//  Copyright © 2017年 Giant. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/3/7  17:39
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit

open class GYSessionDelegate: NSObject {
    
    
    open var downloadTaskDidFinishDownloadingToURL: ((URLSession, URLSessionDownloadTask, URL) -> Void)?
    
    open var downloadTaskDidWriteData: ((URLSession, URLSessionDownloadTask, Int64, Int64, Int64) -> Void)?
    
    open var downloadTaskDidResumeAtOffset: ((URLSession, URLSessionDownloadTask, Int64, Int64) -> Void)?
}


extension GYSessionDelegate: URLSessionDataDelegate {
    
    
    /// Description
    ///
    /// - Parameters:
    ///   - session: session description
    ///   - dataTask: dataTask description
    ///   - downloadTask: downloadTask description
    open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didBecome downloadTask: URLSessionDownloadTask) {
        
       print("didBecome")
    }
    
    
    /// 开始接受数据
    ///
    /// - Parameters:
    ///   - session: session description
    ///   - dataTask: dataTask description
    ///   - data: data description
    open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
        
         print("didReceive")
         print("开始接受数据了")
    }
    
    
    /// 下载完成或者出错
    ///
    /// - Parameters:
    ///   - session: session description
    ///   - task: task description
    ///   - error: error description
    open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
        
        if (error != nil) {
            print("出错了")
        }
        print("didCompleteWithError")
        
        guard error != nil else {
            
            print("出错了")
            return
        }
        
        print("完成了")
        
    }
    
    
    /// Description
    ///
    /// - Parameters:
    ///   - session: session description
    ///   - dataTask: dataTask description
    ///   - response: response description
    ///   - completionHandler: completionHandler description
    open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
     
        print("didReceive response")
    }
    
    open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
        print("urlSessionDidFinishEvents")
    }
    
    
    open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse, completionHandler: @escaping (CachedURLResponse?) -> Void) {
        print("willCacheResponse")
    }
    
}
