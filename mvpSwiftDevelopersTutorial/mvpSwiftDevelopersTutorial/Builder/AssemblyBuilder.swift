//
//  AssemblyBuilder.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 16.02.2022.
//

import Foundation
import UIKit

// this protocol consist all methods needed for create all our modules in application
protocol Buider {
    
    static func createMainModule() -> UIViewController
}

//an object there are asemled needed modules

class AsemblyBuilder: Buider {
    
   static func createMainModule() -> UIViewController {
       
     let person = Person(firstName: "Davide", lastName: "Blaine")
     let view = MainViewController()
     let presenter = MainPresenter(view: view, person: person)
       view.presenter = presenter
       return view
    }
}
