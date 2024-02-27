//
//  NetworkManager.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 10.02.2024.
//

import Foundation

class NetworkManager: HTTPClient {

    func getCoinList() {

        Task {
            let list = await sendRequest(endpoint: CoinEndpoint.fetchCoinList(page: 1, perPage: 1), responseModel: [CoinModel].self)
            print(list)
        }
    }
}
