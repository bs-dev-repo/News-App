//
//  NewsListTableViewController.swift
//  NewsApp
//
//  Created by Baibhav singh on 02/07/22.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp(){
        navigationController?.navigationBar.prefersLargeTitles = true
        let url: String = "https://newsapi.org/v2/top-headlines?country=us&apiKey=951b58bcec2848c78d4153dba6393198"
        WebService().getArticle(url: URL(string: url)!) { articles in
            if let articles = articles {
                self.articleListVM = ArticleListViewModel.init(articles: articles)
                DispatchQueue.main.async {
                    self.tableView.reloadData()

                }
            }
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.articles.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(index: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell") as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell not found")
        }
        let articleViewModel = self.articleListVM.articles[indexPath.row]
        cell.lblTitle.text = articleViewModel.title
        cell.lblDescription.text = articleViewModel.description
        return cell
    }
    
}
