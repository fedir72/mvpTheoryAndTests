//
//  MainViewController.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 15.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var myLabel: UILabel!
    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButton(sender: UIButton) {
        //обращение к презентеру
        self.presenter.showGreeting()
    }

}

extension MainViewController: MainViewProtocol {
    //функция вызываемая презентером через протокол "MainViewProtocol"
    func setGreeting(greeting: String) {
        self.myLabel.text = greeting
    }
}
