//
//  MemeModel.swift
//  Memes
//
//  Created by Timur Baimukhambet on 29.06.2023.
//

import Foundation

struct Meme: Identifiable {
    let id = UUID()
    let title: String
    let thumbnailName: String
    let videoName: String
    
}

let memes = [Meme(title: "test1", thumbnailName: "kairosh1", videoName: "egg"),
             Meme(title: "test2", thumbnailName: "kairosh1", videoName: "didar"),
             Meme(title: "test3", thumbnailName: "kairosh1", videoName: "egg"),
             Meme(title: "test4", thumbnailName: "kairosh1", videoName: "didar"),
]
