//
//  HeaderModel.swift
//  Avocados
//
//  Created by Cristina on 2023-08-23.
//

import SwiftUI

// MARK: - HEADER MODEL
struct Header: Identifiable {
    let id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
