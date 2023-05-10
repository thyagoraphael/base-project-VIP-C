//
//  HomeInteractorTests.swift
//  HomeTests
//
//  Created by Thyago Raphael on 09/05/23.
//

import XCTest
@testable import VIP

final class HomeInteractorTests: XCTestCase {
    
    func test_doSomething() {
        let (sut, presenterSpy) = makeSut()
        
        sut.doSomething()
        
//        XCTAssertTrue(presenterSpy.wasCalled)
//        XCTAssertEqual(presenterSpy.counter, 1)
        XCTAssertEqual(presenterSpy.messages, [.doSomething])
    }
    
    func test_doNothing() {
        let (sut, presenterSpy) = makeSut()
        
        sut.doNothing()
        
//        XCTAssertTrue(presenterSpy.wasCalled)
//        XCTAssertEqual(presenterSpy.counter, 1)
        XCTAssertEqual(presenterSpy.messages, [.doNothing])
    }
    
    private func makeSut() -> (sut: HomeInteractor, presenterSpy: HomeInteractorSpy) {
        let presenterSpy = HomeInteractorSpy()
        let sut = HomeInteractor(presenter: presenterSpy)
        
        return (sut, presenterSpy)
    }
}

final class HomeInteractorSpy: HomePresenting {
    func displaySayHello(name: String, lastName: String) {
        
    }
    
    
    enum Messages: Equatable {
        case doSomething
        case doNothing
    }
    
    private(set) var messages: [Messages] = []
    private(set) var wasCalled = false
    private(set) var counter = 0
    
    func doSomething() {
        messages.append(.doSomething)
//        wasCalled = true
//        counter += 1
    }
    
    func doNothing() {
        messages.append(.doNothing)
//        wasCalled = true
//        counter += 1
    }
}
