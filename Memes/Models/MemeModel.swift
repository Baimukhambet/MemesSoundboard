//
//  MemeModel.swift
//  Memes
//
//  Created by Timur Baimukhambet on 29.06.2023.
//

import Foundation
import SwiftUI

enum CategoryEnum {
    case all
    case kairosh
    case tiktok
    case classic
    case curses
}

struct Meme: Identifiable {
    let id = UUID()
    @State static var currentCategory: CategoryEnum = .all
    let title: String
    let thumbnailName: String
    let videoName: String
    let category: CategoryEnum
    init(title: String, thumbnailName: String, videoName: String,_ category: CategoryEnum) {
        self.title = title
        self.thumbnailName = thumbnailName
        self.videoName = videoName
        self.category = category
    }
    
    static public func getMemes(_ category: CategoryEnum) -> [Meme] {
        let arr = memes.filter {m in return m.category == category}
        return arr
    }
    
    static public func changeCategory(_ category: CategoryEnum) {
        self.currentCategory = category
    }
}

let memes = [Meme(title: "жұмыртқа", thumbnailName: "kairosh1", videoName: "egg", .kairosh),
             Meme(title: "ДИДАР", thumbnailName: "didar", videoName: "didar", .tiktok),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "aktau_sila", .classic),
             Meme(title: "test4", thumbnailName: "bank_kartoshkasy", videoName: "bank_kartoshkasy", .kairosh),
             Meme(title: "", thumbnailName: "bas_shu", videoName: "bas_shu", .kairosh),
             Meme(title: "ЧОТАМ", thumbnailName: "chotam", videoName: "chotam", .tiktok),
             Meme(title: "кабан", thumbnailName: "kaban", videoName: "kaban", .tiktok),
             Meme(title: "test4", thumbnailName: "menin_omirim", videoName: "menin_omirim", .kairosh),
             Meme(title: "Ринат", thumbnailName: "rinat", videoName: "rinat", .kairosh),
             Meme(title: "Шашлыгымай", thumbnailName: "shashlyk", videoName: "shashlyk", .kairosh),
             Meme(title: "Сорпа", thumbnailName: "sorpa", videoName: "sorpa", .kairosh),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "mickey_donald", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "milord", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "nan_cut", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "nihaoma", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "sb", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "shrek_cut", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "taswhite", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "aminepohi", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "benzema", .classic),
             Meme(title: "Ақтау", thumbnailName: "aktau_sila", videoName: "kairat__cut", .classic),
             
]


