//
//  URLComponents+Ext.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 10.02.2024.
//

import Foundation

extension URLComponents {
    static public var `default`: Self {
        var components: Self = .init()
        components.scheme = Constants.baseScheme
        components.host = Constants.baseHost
        return components
    }
}
