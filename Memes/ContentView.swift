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
            TabView {
                VStack(spacing: 0) {
                    MemeCollectionView().background(Color(red: 33/255, green: 33/255, blue: 35/255).opacity(0.8))
                }
                .font(.title2)
                .tabItem {
                    Image(systemName: "house").renderingMode(.template).foregroundColor(.black)
                    Text("Main")
                }
                
                Text("Quiz")
                    .tabItem {
                        Image(systemName: "arrowtriangle.right.circle").renderingMode(.template).foregroundColor(.black)
                        Text("Quiz")
                    }
            }
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                appearance.backgroundColor = UIColor(Color.orange.opacity(0.2))
                UITabBar.appearance().standardAppearance = appearance
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




