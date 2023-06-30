//
//  CategoryModel.swift
//  Memes
//
//  Created by Timur Baimukhambet on 30.06.2023.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let type: CategoryEnum
}

let categories = [Category(name: "all", type: .all),
                  Category(name: "kairosh", type: .kairosh),
                  Category(name: "classic", type: .classic),
]
