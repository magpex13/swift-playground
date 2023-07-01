//
//  ExerciseStacksMainView.swift
//  Little Lemon Demo
//
//  Created by Magno on 26/04/23.
//

import SwiftUI

struct ExerciseStacksMainView: View {
    var body: some View {
        ZStack {
            HStack {
                Text("Demo")
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                VStack(spacing: 10) {
                    Text("Little Lemon").font(.title)
                    Text("Tomato Tortellini, Bottarga and Carbonara")
                        .font(.title)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
        }
        .background(.red)
        .padding()
    }
}
