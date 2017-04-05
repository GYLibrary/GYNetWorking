//
//  DownLoadRequest.swift
//  GYNetWorking
//
//  Created by ZGY on 2017/3/6.
//  Copyright © 2017年 Giant. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/3/6  20:14
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit

class DownLoadRequest {
    
    public typealias ProgressHandler = (Progress) -> Void
    
    init(_ url:URL) {
        
        _ = URLSession().downloadTask(with: url)
        
        
        
    }
    
//    @discardableResult
//    open func downloadProgress(queue: DispatchQueue = DispatchQueue.main,closure: @escaping ProgressHandler) -> self {
//        
//        return self
//    }
    
}
