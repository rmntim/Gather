//
//  FeedView.swift
//  Gather
//
//  Created by Roman Timoshkin on 06.05.2024.
//

import SwiftUI

struct FeedView: View {
    // TODO: fetch posts from back
    let posts: [Post] = Post.mockData()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // Stories
                    VStack(spacing: 16) {
                        Text("foobar")
                        Text("foobar")
                    }
                    
                    // Posts
                    LazyVStack(spacing: 32) {
                        ForEach(posts) { post in
                            NavigationLink(destination: FullPostView(post: post)) {
                                PostView(post: post)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("General")
        }
    }
}

#Preview {
    FeedView()
}
