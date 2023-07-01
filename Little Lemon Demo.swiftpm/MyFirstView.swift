//
//  MyFirstView.swift
//  Little Lemon Demo
//
//  Created by Magno on 22/04/23.
//

import SwiftUI

struct MyFirstView: View {
    @State var textfieldValue: String = ""
    var body: some View {
        TextField("Inserte un conejo: ", text: $textfieldValue, onEditingChanged: {
                status in print(status)
            })
            .padding()
            .onChange(of: textfieldValue, perform: {
                newValue in print(newValue)
            })
            .onSubmit {
                print("submitted!")
            }
        Text("Little Lemon")
            .font(.title)
            .foregroundColor(.gray)
            .padding()
            .background(.white)
    }
}
