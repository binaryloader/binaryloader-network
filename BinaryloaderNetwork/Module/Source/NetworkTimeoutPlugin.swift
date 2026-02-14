//
//  NetworkTimeoutPlugin.swift
//  
//
//  Created by binaryloader on 2022/08/15.
//

import Foundation
import Moya

public final class NetworkTimeoutPlugin: PluginType {
    
    private let timeoutInterval: TimeInterval
    
    public init(timeoutInterval: TimeInterval = 10) {
        self.timeoutInterval = timeoutInterval
    }
    
    public func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        var request = request
        request.timeoutInterval = timeoutInterval
        return request
    }
    
}
