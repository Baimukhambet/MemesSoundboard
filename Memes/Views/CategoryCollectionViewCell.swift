//
//  CategoryCollectionViewCell.swift
//  Memes
//
//  Created by Timur Baimukhambet on 30.06.2023.
//

import SwiftUI



struct CategoryCollectionViewCell: View {
    let category: Category
    var body: some View {
        NavigationLink {
            MemeCollectionView()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 120, height: 160)
                    .foregroundColor(.orange)
                Text(category.name)
                
            }.onTapGesture {
                Meme.changeCategory(category.type)
                print(Meme.currentCategory)
            }
        }
    }
}

struct CategoryCollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionViewCell(category: categories[0])
    }
}
