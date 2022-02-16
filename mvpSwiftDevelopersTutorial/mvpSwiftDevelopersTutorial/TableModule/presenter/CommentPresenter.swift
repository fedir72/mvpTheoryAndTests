//
//  CommentPresenter.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 16.02.2022.
//

import Foundation
import UIKit

protocol CommentViewProtocol: AnyObject {
    func succes()
    func failure(error: Error)
}

protocol CommentViewPresenterProtocol: AnyObject {
    init(view: CommentViewProtocol, network: NetworkServiceProtocol )
    func getComments()
    var comments: [Post]? {get set}
}



class CommentPresenter: CommentViewPresenterProtocol {
    
    weak var view: CommentViewProtocol?
    let network: NetworkServiceProtocol
    var comments: [Post]?

    required init(view: CommentViewProtocol, network: NetworkServiceProtocol) {
        self.view = view
        self.network = network
        getComments()
    }
    
    func getComments() {
        network.getComments { [weak self] result in
            guard let self = self else {return}
            DispatchQueue.main.async {
                switch result {
                case .success(let comments):
                    self.comments = comments
                    self.view?.succes()
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
}
