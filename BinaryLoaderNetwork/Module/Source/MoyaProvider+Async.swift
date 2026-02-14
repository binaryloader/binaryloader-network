//
//  MoyaProvider+Async.swift
//  
//
//  Created by binaryloader on 2022/08/15.
//

import Moya

public extension MoyaProvider {
    
    func request(_ target: Target) async -> Result<Response, MoyaError> {
        let request = MoyaAsyncRequest { [weak self] continuation in
            guard let self = self else {
                let error = MoyaError.underlying(MoyaAsyncError.dealloc, nil)
                continuation.resume(returning: .failure(error))
                return nil
            }
            
            return self.request(target) { result in
                continuation.resume(returning: result)
            }
        }
        
        return await withTaskCancellationHandler(handler: {
            request.cancel()
        }, operation: {
            await withCheckedContinuation({ continuation in
                request.perform(continuation: continuation)
            })
        })
    }
    
}
