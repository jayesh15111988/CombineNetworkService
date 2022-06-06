//
//  ViewController.swift
//  CombineNetworkService
//
//  Created by Jayesh Kawli on 6/5/22.
//

import UIKit
import Combine

class ViewController: UIViewController {

    var anyCancellables = Set<AnyCancellable>()
    
    private let baseURLString = "https://jsonplaceholder.typicode.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Downloading a single Decodable type
        CombineNetworkService(baseURLString: baseURLString).getPublisherForResponse(endpoint: "posts/1", queryParameters: [:]).sink { _ in
                // no-op
        } receiveValue: { (post: Post) in
            print("The post title is - \(post.title)")
        }.store(in: &anyCancellables)
        
        // Downloading an array of Decodable types
        CombineNetworkService(baseURLString: baseURLString).getPublisherForArrayResponse(endpoint: "posts/1/comments", queryParameters: [:]).sink { _ in
                // no-op
        } receiveValue: { (comments: [Comment]) in
            print("The comment name is - \(comments[0].name)")
        }.store(in: &anyCancellables)
        
    }

    func showError(with message: String) {
        
    }
}

