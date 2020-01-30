//
//  Article.swift
//  MVVMpractice3
//
//  Created by Eduardo Fonseca on 29/01/20.
//  Copyright © 2020 Eduardo Fonseca. All rights reserved.
//

import Foundation

struct ArticleList : Decodable {
    let articles : [Article]
}

struct Article : Codable {
    let title : String
    let description : String
}
