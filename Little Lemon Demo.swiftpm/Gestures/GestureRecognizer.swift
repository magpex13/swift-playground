//
//  SwiftUIView.swift
//  
//
//  Created by Magno on 28/04/23.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag: Bool = false
    @State private var currentColor: Color = Color.yellow
    var body: some View {
        Text("Tap Me")
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding(15)
            .background(currentColor)
            .onTapGesture {
                flag.toggle()
                if(flag) {
                    currentColor = Color.green
                } else {
                    currentColor = Color.yellow
                }
            }
    }
}
