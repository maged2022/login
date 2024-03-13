//
//  HomeViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.getUserData()
    }
}

//MARK: - extension HomeViewController
extension HomeViewController: HomeViewDelegate {
    func didReceiveUserData(_ user: User?) {
        DispatchQueue.main.async {
            self.welcomeLbl.text = user?.name
        }
    }
}
