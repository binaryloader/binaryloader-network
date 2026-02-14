//
//  MoyaAsyncRequest.swift
//  
//
//  Created by binaryloader on 2022/08/15.
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
