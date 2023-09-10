//
//  RipeningModel.swift
//  Avocados
//
//  Created by Cristina on 2023-09-10.
//

import SwiftUI

// MARK: RIPENING MODEL

struct Ripenning: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
