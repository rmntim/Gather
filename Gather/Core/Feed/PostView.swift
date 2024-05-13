//
//  PostView.swift
//  Gather
//
//  Created by Roman Timoshkin on 13.05.2024.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                AsyncImage(url: URL(string: post.authorImageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    Text("avatar")
                }
                .clipShape(Circle())
                .frame(width: 48, height: 48)
                
                VStack(alignment: .leading) {
                    Text(post.authorName)
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Text(post.publicationDate.toPostString())
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
            }
            .padding(.vertical)
            
            ZStack(alignment: .bottomLeading) {
                AsyncImage(url: URL(string: post.event.imageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    Text("Event image")
                }
                .aspectRatio(contentMode: .fit)
                .mask(LinearGradient(gradient: Gradient(stops: [
                    .init(color: .black, location: 0),
                    .init(color: .clear, location: 1),
                    .init(color: .black, location: 1),
                    .init(color: .clear, location: 1),
                ]), startPoint: .top, endPoint: .bottom))
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(post.event.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text(post.description)
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    Button {
                        print("liked")
                    } label: {
                        VStack {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 24, height: 20)
                            
                            Text("\(post.likes)")
                        }
                    }
                    .foregroundStyle(Color(.label))
                }
                .padding()
            }
        }
    }
}

extension Date {
    func toPostString() -> String {
        let relativeDateFormatter = DateFormatter()
        relativeDateFormatter.timeStyle = .none
        relativeDateFormatter.dateStyle = .medium
        relativeDateFormatter.doesRelativeDateFormatting = true
        return relativeDateFormatter.string(from: self)
    }
}

#Preview {
    PostView(post: Post.mockData()[0])
}
