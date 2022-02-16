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
    static func createCommentModule() -> UIViewController
    static func createDetailModule(comment: Post) -> UIViewController}

//an object there are asemled needed modules

class AsemblyBuilder: Buider {
    
   static func createMainModule() -> UIViewController {
       
     let person = Person(firstName: "Davide", lastName: "Blaine")
     let view = MainViewController()
     let presenter = MainPresenter(view: view, person: person)
       view.presenter = presenter
       return view
    }
    
    static func createCommentModule() -> UIViewController {
        let view = CommentViewController()
        let network = NetworkService()
        let presenter = CommentPresenter(view: view, network: network)
        view.presenter = presenter
        return view
    }
    
    static func createDetailModule(comment: Post) -> UIViewController {
        let view = DetailViewController()
        let comment = comment
        let presenter = DetailPresenter(view: view, comment: comment)
        view.presenter = presenter
        return view
    }
}
