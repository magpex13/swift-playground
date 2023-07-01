//
//  SwiftUIView.swift
//  
//
//  Created by Magno on 28/04/23.
//

import SwiftUI

struct Item: Identifiable {
    let id: String = UUID().uuidString
    let name: String
}

class Model: ObservableObject {
    var items:[Item] = menuItems()
    
    static func menuItems()-> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocado Toast"),
            Item(name: "Tortellini"),
        ]
    }
}

struct DisplayingListExerciseView: View {
    @ObservedObject private var model: Model = Model()
    
    var body: some View {
        VStack {
            List {
                ForEach(model.items){menuItem in
                    Text(menuItem.name)
                }
            }
        }
    }
}
