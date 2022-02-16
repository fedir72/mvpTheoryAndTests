//
//  NetworkService.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 16.02.2022.
//

import Foundation

protocol NetworkServiceProtocol {
    func getComments(completion: @escaping ((Result<[Post],Error>) -> Void))
}

class NetworkService: NetworkServiceProtocol {
    
let urlStr = "https://jsonplaceholder.typicode.com/comments"
    
    
    func getComments(completion: @escaping ((Result<[Post], Error>) -> Void)) {
        guard let url = URL(string: urlStr) else {return}
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            
            guard let data = data else {return}
            
            do {
                let posts = try JSONDecoder().decode([Post].self, from: data)
                completion(.success(posts))
            } catch let error {
                completion(.failure(error))
            }
        }.resume()
    }
}
