//
//  NetworkProvider.swift
//  
//
//  Created by binaryloader on 2022/08/15.
//

import Moya

public final class NetworkProvider<Target: NetworkTarget> {
    
    private let provider: MoyaProvider<Target>
    
    public init(plugins: [PluginType] = [NetworkTimeoutPlugin()]) {
        self.provider = MoyaProvider(plugins: plugins)
    }
    
    @discardableResult
    public func request(target: Target, completion: @escaping Completion) -> Cancellable {
        let cancellable = provider.request(target, completion: completion)
        return cancellable
    }
    
    public func request(target: Target) async -> Result<Response, MoyaError> {
        let result = await provider.request(target)
        return result
    }
    
}
