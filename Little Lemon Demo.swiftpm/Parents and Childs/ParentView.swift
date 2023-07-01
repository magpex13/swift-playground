//
//  ParentAndChildsView.swift
//  Little Lemon Demo
//
//  Created by Magno on 26/04/23.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack (spacing: 10) {
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 50, height: 50)
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(.yellow)
                
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 100, height: 30)
        }
        .padding()
    }
}
