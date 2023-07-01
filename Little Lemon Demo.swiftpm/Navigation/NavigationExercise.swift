//
//  SwiftUIView.swift
//  
//
//  Created by Magno on 27/04/23.
//

import SwiftUI

struct NavigationExercise: View {
    var body: some View {
        NavigationView() {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: Text("NEWVIEW"), label: {
                    Text("Do something")
                })
                .navigationTitle("Little Lemon")
            }
        }
    }
}
