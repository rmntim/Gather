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
    let event: Event
}

extension Post {
    static func mockData() -> [Post] {
        return [
            .init(authorName: "Виктор", authorImageUrl: "https://xsgames.co/randomusers/avatar.php?g=male", publicationDate: Date.now, description: "Это было невероятно...", likes: 43, event: Event(name: "Feduk", date: Date.distantPast, imageUrl: "https://random.imagecdn.app/800/800")),
            .init(authorName: "Роман", authorImageUrl: "https://xsgames.co/randomusers/avatar.php?g=male", publicationDate: Date.now, description: "Я ебу что тут писать????", likes: 228, event: Event(name: "QUOK Genesis Tour", date: Date.now, imageUrl: "https://random.imagecdn.app/800/800")),
        ]
    }
}
