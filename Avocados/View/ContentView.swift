//
//  ContentView.swift
//  Avocados
//
//  Created by Cristina on 2023-08-18.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var headers: [Header] = headersData
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you want to know about avocados but you were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                } //: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VStack
            } //: VStack
        .edgesIgnoringSafeArea(.all)
        .padding(0)
        } //: ScrollView
    }

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
