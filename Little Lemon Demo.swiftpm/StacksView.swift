//
//  StacksView.swift
//  Little Lemon Demo
//
//  Created by Magno on 24/04/23.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(.red)
                .frame(width: 200, height: 50)
                .background(.white)
                .padding()
            // Spacer()
            HStack {
                Button("Red") {}
                Button("Blue") {}
                Button("Green") {}
            }
        }
        .frame(width: 300, alignment: .leading)
        .padding()
    }
}
