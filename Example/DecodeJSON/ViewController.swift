//
//  ViewController.swift
//  DecodeJSON
//
//  Created by jmhdevep on 03/16/2019.
//  Copyright (c) 2019 jmhdevep. All rights reserved.
//

import UIKit
import DecodeJSON

class ViewController: UIViewController {
    private let url = URL(string: "https://fakerestapi.azurewebsites.net/api/Books")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestBooksCodingKeys()
    }

    func requestBooksDefault() {
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            if let books: [BookResponse] = DecodeJSON.shared.decode(data: data) {
                for book in books {
                    print(book.Title)
                }
            }
        }
        
        task.resume()
    }
    
    func requestBooksCodingKeys() {
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            if let books: [BookCodingKeysResponse] = DecodeJSON.shared.decode(data: data) {
                for book in books {
                    print(book.title)
                }
            }
        }
        
        task.resume()
    }
}

