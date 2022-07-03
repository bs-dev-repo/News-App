//
//  ArticleListViewModel.swift
//  NewsApp
//
//  Created by Baibhav singh on 03/07/22.
//

import Foundation

struct ArticleListViewModel {
    
    let articles: [Article]
    
    func numberOfSecton() -> Int  {
        return 1
        
    }
    
    func numberOfRowsInSection(index: Int) -> Int {
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        
        let article = articles[index]
        
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    var subTitle: String {
        return self.article.description ?? ""
    }
}
