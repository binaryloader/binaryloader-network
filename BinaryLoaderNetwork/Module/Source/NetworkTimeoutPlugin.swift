//
//  NetworkTimeoutPlugin.swift
//
//
//  Created by BinaryLoader on 8/15/22.
//

import Foundation
import Moya

public final class NetworkTimeoutPlugin: PluginType {

    private let timeoutInterval: TimeInterval

    public init(timeoutInterval: TimeInterval = 10) {
        self.timeoutInterval = timeoutInterval
    }

    public func prepare(
        _ request: URLRequest,
        target: TargetType
    ) -> URLRequest {
        var request = request
        request.timeoutInterval = timeoutInterval
        return request
    }
}
