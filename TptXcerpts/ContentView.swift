//
//  ContentView.swift
//  TptXcerpts
//
//  Created by Alexander Burdiss on 5/25/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CompositionListView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Excerpts")
            }
            ComposerListView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Composers")
            }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("More")
            }
        }
        .environmentObject(settingsModel())
        .environmentObject(Favorites())
        .accentColor(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
