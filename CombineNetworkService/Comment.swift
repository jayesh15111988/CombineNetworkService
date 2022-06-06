//
//  Comment.swift
//  Comment
//
//  Created by Jayesh Kawli on 6/5/22.
//

import Foundation

struct Comment: Decodable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
}
