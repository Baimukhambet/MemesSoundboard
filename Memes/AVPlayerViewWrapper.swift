//
//  AVPlayerViewWrapper.swift
//  Memes
//
//  Created by Timur Baimukhambet on 29.06.2023.
//

import Foundation
import AVKit
import SwiftUI

struct AVPlayerViewWrapper: UIViewRepresentable {
    @Binding var isPlaying: Bool
    let player: AVPlayer
    func makeUIView(context: Context) -> UIView {
        let playerLayer = AVPlayerLayer(player: player)
        let view = UIView()
        view.frame.size.width = 120
        view.frame.size.height = 150
        view.layer.borderColor = UIColor.red.cgColor
        playerLayer.frame = view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(playerLayer)
        player.play()
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in
            player.seek(to: .zero)
            player.pause()
            player.replaceCurrentItem(with: nil)
            isPlaying.toggle()
        }
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
    
}
