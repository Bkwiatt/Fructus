//
//  FruitModel.swift
//  Fructus
//
//  Created by Brandon Kwiatkowski on 8/20/20.
//

import SwiftUI

// MARK: - FRUIT DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    var webLink: String
}
