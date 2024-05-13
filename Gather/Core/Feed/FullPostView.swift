//
//  FullPostView.swift
//  Gather
//
//  Created by Roman Timoshkin on 13.05.2024.
//

import SwiftUI

struct FullPostView: View {
    let post: Post
    
    var body: some View {
        Text(post.authorName)
    }
}

#Preview {
    FullPostView(post: Post.mockData()[0])
}
