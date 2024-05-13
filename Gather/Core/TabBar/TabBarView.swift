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
                    Image(systemName: "calendar")
                }
           MapView()
                .tabItem {
                    Image(systemName: "map.fill")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
    }
}

#Preview {
    TabBarView()
}
