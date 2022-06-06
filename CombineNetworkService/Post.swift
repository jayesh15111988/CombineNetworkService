//
//  Post.swift
//  Post
//
//  Created by Jayesh Kawli on 6/5/22.
//

import Foundation

struct Post: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
