//
//  BookCodingKeysResponse.swift
//  DecodeJSON_Example
//
//  Created by jmhdevep on 16/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

struct BookCodingKeysResponse: Codable {
    let id: Int
    let title: String
    let description: String
    let numberOfPages: Int
    
    enum CodingKeys : String, CodingKey {
        case id = "ID"
        case title = "Title"
        case description = "Description"
        case numberOfPages = "PageCount"
    }
}
