//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Bertuğ Horoz on 16.11.2022.
//

import Foundation

struct Welcome: Codable, Identifiable {
    let id = UUID()
    let type: String
    let value: [Value]
}

struct Value: Codable, Identifiable {
    let id: Int
    let joke: String
    let categories: [String]
}
