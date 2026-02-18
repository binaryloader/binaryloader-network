//
//  Moya+Wrapping.swift
//  
//
//  Created by BinaryLoader on 8/15/22.
//

import Moya

public typealias Session = Moya.Session
public typealias Method = Moya.Method
public typealias Task = Moya.Task
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
