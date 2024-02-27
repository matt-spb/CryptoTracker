//
//  CoinEndpoint.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 12.02.2024.
//

import Foundation

struct CoinEndpoint: HTTPEndpointConfigurable {
    var path: String
    var queryItems: [URLQueryItem]?
    
}

extension CoinEndpoint {
    static func fetchCoinList(page: Int, perPage: Int) -> HTTPEndpoint {
        return CoinEndpoint(
            path: "/api/v3/coins/markets",
            queryItems: [
                URLQueryItem(name: "vs_currency", value: "usd"),
                URLQueryItem(name: "per_page", value: "\(perPage)"),
                URLQueryItem(name: "page", value: "\(page)")
            ]
        )
    }
}

extension CoinEndpoint: HTTPEndpoint {
    var url: URL? {
        var components = URLComponents.default
        components.path = path
        components.queryItems = queryItems
        return components.url
    }
    
    var method: HTTPMethod {
        .get
    }
    
    var header: HTTPHeaders? {
        .none
    }
    
    var body: HTTPBody {
        .init()
    }
}
