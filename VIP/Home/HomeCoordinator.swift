//
//  HomeCoordinator.swift
//  VIP
//
//  Created by Thyago Raphael on 09/05/23.
//

import UIKit

enum HomeAction {
    case register
}

protocol HomeCoordinating {
    func perform(action: HomeAction)
}

final class HomeCoordinator {
    weak var viewController: UIViewController?
}

extension HomeCoordinator: HomeCoordinating {
    func perform(action: HomeAction) {
        switch action {
        case .register:
            print("Hello") // Aqui passaria uma View
        }
    }
}
