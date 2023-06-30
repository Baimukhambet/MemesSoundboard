//
//  MemeCardView.swift
//  Memes
//
//  Created by Timur Baimukhambet on 30.06.2023.
//

import Foundation
import SwiftUI
import AVKit

struct MemeCardView: View {
    var meme: Meme
    @State private var isPlaying = false
    @State private var player: AVPlayer?

    var body: some View {
        ZStack {
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
                
                    .frame(width: 120, height: 150)
                    .scaledToFit()
                
                    .clipped()
                    .cornerRadius(14)
                    .opacity(0.7)
                    
                
                Text(meme.title)
                    .font(Font.system(size: 20, weight: .black))
                    .foregroundColor(.white)
                    
            }
            

        }
        
        .onTapGesture {
            isPlaying.toggle()
            if isPlaying {
                player = AVPlayer(url: Bundle.main.url(forResource: meme.videoName, withExtension: "mp4")!)
                player?.play()
            } else {
                player?.pause()
                player?.replaceCurrentItem(with: nil)
            }
        }
    }
        
}
