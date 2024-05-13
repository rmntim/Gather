//
//  Event.swift
//  Gather
//
//  Created by Roman Timoshkin on 13.05.2024.
//

import Foundation

struct Event: Identifiable, Hashable {
    let id: UUID = UUID()
    let name: String
    let date: Date
    let imageUrl: String
}
