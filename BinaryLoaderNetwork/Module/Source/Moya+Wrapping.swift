//
//  Moya+Wrapping.swift
//  
//
//  Created by binaryloader on 2022/08/15.
//

import Moya

public typealias Session = Moya.Session
public typealias HTTPMethod = Moya.Method
public typealias HTTPTask = Moya.Task
public typealias URLEncoding = Moya.URLEncoding
public typealias JSONEncoding = Moya.JSONEncoding
public typealias ParameterEncoding = Moya.ParameterEncoding
public typealias MultipartFormData = Moya.MultipartFormData
public typealias FormDataProvider = Moya.MultipartFormData.FormDataProvider
public typealias DownloadDestination = Moya.DownloadDestination
public typealias RequestInterceptor = Moya.RequestInterceptor
public typealias CancellableToken = Moya.CancellableToken
public typealias Cancellable = Moya.Cancellable
public typealias Response = Moya.Response
public typealias MoyaError = Moya.MoyaError
public typealias ValidationType = Moya.ValidationType
public typealias Completion = (_ result: Result<Response, MoyaError>) -> Void
