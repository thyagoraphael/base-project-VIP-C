//
//  HomeInteractor.swift
//  VIP
//
//  Created by Thyago Raphael on 09/05/23.
//

import Foundation

protocol HomeInteracting {
    func doSomething()
    func doNothing()
    
    func sayHello(name: String, lastName: String)
}

final class HomeInteractor {
    private let presenter: HomePresenting
    
    init(presenter: HomePresenting) {
        self.presenter = presenter
    }
}

extension HomeInteractor: HomeInteracting {
    func sayHello(name: String, lastName: String) {
        presenter.displaySayHello(name: name, lastName: lastName)
    }
    
    func doSomething() {
        presenter.doSomething()
    }
    
    func doNothing() {
        presenter.doNothing()
    }
}
