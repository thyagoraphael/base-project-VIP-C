//
//  HomePresenter.swift
//  VIP
//
//  Created by Thyago Raphael on 09/05/23.
//

import UIKit

protocol HomePresenting {
    func doSomething()
    func doNothing()
    
    func displaySayHello(name: String, lastName: String)
}

final class HomePresenter {
    var viewController: HomeViewControllerDisplaing?
    private let coordinator: HomeCoordinating
    
    init(coordinator: HomeCoordinating) {
        self.coordinator = coordinator
    }
}

extension HomePresenter: HomePresenting {
    func displaySayHello(name: String, lastName: String) {
        viewController?.displayHello(name: name, lastName: lastName)
    }
    
    func doSomething() {
        // template
        viewController?.displaySomething()
    }
    func doNothing() {
        // template
        viewController?.displaySomething()
    }
}
