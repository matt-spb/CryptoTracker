//
//  ViewController.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 04.12.2023.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    let networkManager = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        networkManager.getCoinList()
    }
}

