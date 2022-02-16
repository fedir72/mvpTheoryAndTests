//
//  MainPresenter.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 15.02.2022.
//

import Foundation
import UIKit

protocol MainViewProtocol: AnyObject {
    func setGreeting(greeting: String)
}

protocol MainViewPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    
    weak var view: MainViewProtocol? // аналог делегирования для передачи данных
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.person = person
        self.view = view
    }
    
    func showGreeting() {
        //создание данных и передача их во вью
        let greeting = self.person.firstName + " " + self.person.lastName
        self.view?.setGreeting(greeting: greeting)
    }
    
    
}
