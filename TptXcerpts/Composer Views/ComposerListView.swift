//
//  ComposerListView.swift
//  TptXcerpts
//
//  Created by Alexander Burdiss on 5/25/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct ComposerListView: View {
    
    var model = TrumpetContentModel().composers
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    NavigationLink(destination: ComposerDetailView(composer: item)) {
                        Text(item.name)
                    }
                }
            }
        .navigationBarTitle("Composers")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ComposerListView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerListView()
    }
}
