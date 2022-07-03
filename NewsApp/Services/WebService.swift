//
//  WebService.swift
//  NewsApp
//
//  Created by Baibhav singh on 02/07/22.
//

import Foundation

class WebService  {
    
    func getArticle(url: URL, compilitionHandler:@escaping ([Article]?)->())  {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                compilitionHandler(nil)
            } else if let data = data {
                
                print(data)
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    compilitionHandler(articleList.articles)
                    print(articleList.articles)
                } else {
                    compilitionHandler(nil)
                }
            }
            
        }.resume()
        
    }
    
}
