//
//  DetailViewPresenter.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 16.02.2022.
//

import Foundation

protocol DetailViewProtocol: AnyObject {
    func setComment(comment: Post?)
}

 
protocol DetaiViewPresenterProtocol: AnyObject {
    init(view: DetailViewProtocol,comment: Post?)
    func setComment()
}

class DetailPresenter: DetaiViewPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    let comment: Post?
    
    required init(view: DetailViewProtocol, comment: Post?) {
        self.view = view
        self.comment = comment
    }
    
    public func setComment() {
        self.view?.setComment(comment: self.comment)
    }
    
    
}
