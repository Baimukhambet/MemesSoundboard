//
//  MemeCollectionView.swift
//  Memes
//
//  Created by Timur Baimukhambet on 30.06.2023.
//

import Foundation
import SwiftUI

struct MemeCollectionView: View {
    @State var memesArray = memes
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                ForEach(0..<memesArray.count) { index in
                    MemeCardView(meme: memesArray[index])
                }
                .padding(.top, 16)
                
            }
            .padding(.horizontal, 4)
            .padding(.top, 24)
            .padding(.bottom, 44)
            .navigationTitle("MemeSoundboard")
        }
        

    }
    
    
}
