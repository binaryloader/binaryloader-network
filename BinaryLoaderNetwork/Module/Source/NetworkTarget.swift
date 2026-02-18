//
//  NetworkTarget.swift
//  
//
//  Created by BinaryLoader on 8/15/22.
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
