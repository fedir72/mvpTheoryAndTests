//
//  DetailViewController.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 16.02.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var presenter: DetaiViewPresenterProtocol!
    
    @IBOutlet weak var detailtextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setComment()
    }
}

extension DetailViewController: DetailViewProtocol {
    func setComment(comment: Post?) {
        detailtextLabel.text = comment?.getTextForDeatailView()
    }
    
    
}
