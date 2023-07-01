//
//  SwiftUIView.swift
//  
//
//  Created by Magno on 27/04/23.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack {
            TabView {
                Text("This is the Share View")
                    .tabItem({
                        Label("share", systemImage: "square.and.arrow.up")
                    })
                Text("This is the Trash View")
                    .tabItem({
                        Label("trash", systemImage: "trash")
                    })
            }
        }
    }
}
