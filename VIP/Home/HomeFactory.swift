//
//  HomeFactory.swift
//  VIP
//
//  Created by Thyago Raphael on 09/05/23.
//

import UIKit

enum HomeFactory {
    static func make() -> HomeViewController {
        let coordinator = HomeCoordinator()
        let presenter = HomePresenter(coordinator: coordinator)
        let interactor = HomeInteractor(presenter: presenter)
        let viewController = HomeViewController(interactor: interactor)
        
        coordinator.viewController = viewController
        presenter.viewController = viewController
        return viewController
    }
}

