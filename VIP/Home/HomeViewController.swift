//
//  ViewController.swift
//  VIP
//
//  Created by Thyago Raphael on 09/05/23.
//

import UIKit

protocol HomeViewControllerDisplaing {
    func displaySomething()
    
    func displayHello(name: String, lastName: String)
}

class HomeViewController: UIViewController {
    private let interactor: HomeInteractor
    
    private lazy var element = UILabel()
    private lazy var element2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        element.translatesAutoresizingMaskIntoConstraints = false
        element2.translatesAutoresizingMaskIntoConstraints = false
        element.text = "Thyago"
        element2.text = "Raphael"
        print("\(String(describing: element.text)) \(String(describing: element2.text))")
    }
    
    init(interactor: HomeInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        nil
    }
}

extension HomeViewController: HomeViewControllerDisplaing {
    func displayHello(name: String, lastName: String) {
        element.text = name
        element2.text = lastName
    }
    
    func displaySomething() {
        
    }
}
