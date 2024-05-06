//
//  ProfileView.swift
//  Gather
//
//  Created by Roman Timoshkin on 06.05.2024.
//

import SwiftUI

struct ProfileView: View {
    private let username = "Username"
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section("General") {
                        Text("Setting 1")
                        Text("Setting 2")
                        Text("Setting 3")
                    }
                    Section("Account") {
                        Text("Setting 4")
                        Text("Setting 5")
                        Text("Setting 6")
                    }
                    Section("Other") {
                        NavigationLink {
                            // TODO
                        } label: {
                            Label("Account settings", systemImage: "person")
                        }
                        Button {
                            print("sign out")
                        } label: {
                            Label("Sign out", systemImage: "door.left.hand.open")
                                .foregroundStyle(.red)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .navigationTitle("Hello, \(username)")
        }
    }
}

#Preview {
    ProfileView()
}
