//
//  GYRespons.swift
//  GYNetWorkING
//
//  Created by zhuguangyang on 16/10/27.
//  Copyright © 2016年 Giant. All rights reserved.
//

import Foundation

public struct DataResponse<Value> {
    
    public let result:GYResult<Value>
    
    public init(result: GYResult<Value>) {
        
        self.result = result
        
        
    }
    
}

// MARK: -

extension DataResponse: CustomStringConvertible, CustomDebugStringConvertible {
    /// The textual representation used when written to an output stream, which includes whether the result was a
    /// success or failure.
    public var description: String {
        return result.debugDescription
    }
    
    /// The debug textual representation used when written to an output stream, which includes the URL request, the URL
    /// response, the server data, the response serialization result and the timeline.
    public var debugDescription: String {
        var output: [String] = []
        
//        output.append(request != nil ? "[Request]: \(request!)" : "[Request]: nil")
//        output.append(response != nil ? "[Response]: \(response!)" : "[Response]: nil")
//        output.append("[Data]: \(data?.count ?? 0) bytes")
        output.append("[Result]: \(result.debugDescription)")
//        output.append("[Timeline]: \(timeline.debugDescription)")
        
        return output.joined(separator: "\n")
    }
}
