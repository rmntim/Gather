//
//  Post.swift
//  Gather
//
//  Created by Roman Timoshkin on 13.05.2024.
//

import Foundation

struct Post: Identifiable, Hashable {
    let id: UUID = UUID()
    let authorName: String
    let authorImageUrl: String
    let publicationDate: Date
    let description: String
    let likes: Int
//    let event: Event
}

extension Post {
    static func mockData() -> [Post] {
        return [
            .init(authorName: "Виктор", authorImageUrl: "https://xsgames.co/randomusers/avatar.php?g=male", publicationDate: Date.now, description: "Это было невероятно...", likes: 43),
            .init(authorName: "Роман", authorImageUrl: "https://xsgames.co/randomusers/avatar.php?g=male", publicationDate: Date.now, description: "Я ебу что тут писать????", likes: 228),
        ]
    }
}
