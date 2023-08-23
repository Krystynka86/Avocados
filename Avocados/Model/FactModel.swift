//
//  FactModel.swift
//  Avocados
//
//  Created by Cristina on 2023-08-23.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
