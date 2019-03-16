//
//  BookResponse.swift
//  DecodeJSON_Example
//
//  Created by jmhdevep on 16/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

struct BookResponse: Codable {
    let ID: Int
    let Title: String
    let Description: String
    let PageCount: Int
}
