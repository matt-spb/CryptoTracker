//
//  Endpoint.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 10.02.2024.
//

import Foundation

public protocol HTTPEndpoint {
    var url: URL? { get }
    var method: HTTPMethod { get }
    var header: HTTPHeaders? { get }
    var body: HTTPBody { get }
}

public protocol HTTPEndpointConfigurable: HTTPEndpoint {
    var queryItems: [URLQueryItem]? { get }
    var path: String { get }
}
