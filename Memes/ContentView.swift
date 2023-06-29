//
//  ContentView.swift
//  Memes
//
//  Created by Timur Baimukhambet on 29.06.2023.
//

import SwiftUI
import AVKit
import AVFoundation
import UIKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            MemeCollectionView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: - Structs

struct MemeCollectionView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                ForEach(0..<memes.count) { index in
                    MemeCardView(meme: memes[index])
                }
                .padding(.top, 16)
                
            }
//            .padding(.horizontal, 8)
//            .padding(.top, 32)
        }
    }
}

struct MemeCardView: View {
    var meme: Meme
    @State private var isPlaying = false
    @State private var player: AVPlayer?

    var body: some View {
        VStack {
            if isPlaying {
                AVPlayerViewWrapper(isPlaying: $isPlaying, player: player!)
                    .frame(width: 120, height: 150)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .cornerRadius(14)
            }
            else {
                
                Image(meme.thumbnailName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 150, alignment: .center)
                    .clipped()
                    .cornerRadius(14)
                    
            }
        }
        .aspectRatio(contentMode: .fill)
        .frame(width: 120, height: 150)
        .clipped()
        .onTapGesture {
            isPlaying.toggle()
            if isPlaying {
                player = AVPlayer(url: Bundle.main.url(forResource: meme.videoName, withExtension: "mp4")!)
                player?.play()
            } else {
                player?.pause()
                player = nil
            }
        }
    }
        
}


