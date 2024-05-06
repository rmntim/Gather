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
                    Label("Feed", systemImage: "list.dash")
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
    }
}

#Preview {
    TabBarView()
}
