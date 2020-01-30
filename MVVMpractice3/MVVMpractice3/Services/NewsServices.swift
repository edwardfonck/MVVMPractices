//
//  NewsServices.swift
//  MVVMpractice3
//
//  Created by Eduardo Fonseca on 29/01/20.
//  Copyright © 2020 Eduardo Fonseca. All rights reserved.
//

import Foundation

class NewsServices {
    
    func getArticles(url:URL,completion: @escaping([Article]?) -> Void){
        URLSession.shared.dataTask(with: url) { (data, reponse, error) in
            if let error = error {
                print(error.localizedDescription)
            completion(nil)
            }else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList{
                    completion(articleList.articles)
                }
                
                print(articleList?.articles)
            }
        }.resume()
    }
}
