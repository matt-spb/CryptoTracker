//
//  Data+Ext.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 10.02.2024.
//

import Foundation

extension Data {
    func decode<T: Decodable>(model: T.Type) -> T? {
        return try? JSONDecoder().decode(model, from: self)
    }
}
