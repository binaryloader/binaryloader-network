//
//  NetworkTarget.swift
//  
//
//  Created by binaryloader on 2022/08/15.
//

import Foundation
import Moya

public protocol NetworkTarget: TargetType {
    
    var baseURL: URL { get }
    var path: String { get }
    var method: Method { get }
    var sampleData: Data { get }
    var task: Task { get }
    var headers: [String: String]? { get }
    
}
