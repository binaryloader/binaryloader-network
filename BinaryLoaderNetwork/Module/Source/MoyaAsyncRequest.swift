//
//  MoyaAsyncRequest.swift
//  
//
//  Created by BinaryLoader on 8/15/22.
//

final class MoyaAsyncRequest {
    
    typealias Continuation = CheckedContinuation<Result<Response, MoyaError>, Never>
    typealias Request = (Continuation) -> Cancellable?
    
    private let request: Request
    private var cancellable: Cancellable?
    
    init(request: @escaping Request) {
        self.request = request
    }
    
    func perform(continuation: Continuation) {
        cancellable = request(continuation)
    }
    
    func cancel() {
        cancellable?.cancel()
    }
    
}
