//
//  Article.swift
//  NewsApp
//
//  Created by Baibhav singh on 02/07/22.
//

import Foundation

struct ArticleList: Decodable {
   // let status: String
   // let totalResults: Int
    let articles: [Article] //same property name as coming in jason for this
}

// JSONDecoder maps NSNull to nil so the decoder throws an error if it's going to decode a nil value to a non-optional type.
/*
 For null values in json :
    - The solution is to declare all affected properties as optional.
    - or customize the decoder to replace nil with an empty string.
 


 */
struct Article: Decodable {
    let title: String
    let description: String?
  //  let urlToImage: String
}
