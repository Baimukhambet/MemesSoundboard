//
//  CategoryCollectionView.swift
//  Memes
//
//  Created by Timur Baimukhambet on 30.06.2023.
//

import SwiftUI

struct CategoryCollectionView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                ForEach(0..<categories.count) { index in
                    CategoryCollectionViewCell(category: categories[index])
                }
            }
        }
    }
}

struct CategoryCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionView()
    }
}
