//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by maged on 13/03/2024.
//

import Foundation

protocol HomeViewDelegate {
    func didReceiveUserData(_ user: User?)
}

class HomeViewModel {
    
    var delegate: HomeViewDelegate?
    let networkService = NetworkService.shared
    
    func getUserData() {
        let data = networkService.getUserData()
        delegate?.didReceiveUserData(data)
    }
    
}
