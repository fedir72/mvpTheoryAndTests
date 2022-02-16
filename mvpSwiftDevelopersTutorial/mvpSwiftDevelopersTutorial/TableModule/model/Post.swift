//
//  Post.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 16.02.2022.
//

import Foundation

struct Post: Decodable {
    let  postId: Int
    let  id: Int
    let  name: String
    let  email: String
    let  body: String
    
    func getTextForDeatailView() -> String {
        return " Post:\(postId)\n User:\(id)\n Name:\(name) Email:\(email)\n ...\(body)"
    }
}
