//
//  Int+Ext.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 10.02.2024.
//

import Foundation

extension Int {
    var locaStatusCode: String {
        return HTTPURLResponse.localizedString(forStatusCode: self)
    }
    
    var str: String {
        return String(self)
    }
}
