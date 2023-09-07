//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Cristina on 2023-08-23.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer() // push bookmark button to the right
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer() // push bookmark button to the right top corner
                        } //: VStack
                    } //: HStack
                )
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                // RATING
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                
            }
            .padding()
            .padding(.bottom, 12)
        } //: VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

// MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
