//
//  TabBarView.swift
//  Gather
//
//  Created by Roman Timoshkin on 04.05.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    // TODO: change label or icon so it matches
                    Label("Feed", systemImage: "calendar")
                }
           MapView()
                .tabItem {
                    Label("Map", systemImage: "map.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .tint(Color(.label))
    }
}

#Preview {
    TabBarView()
}
