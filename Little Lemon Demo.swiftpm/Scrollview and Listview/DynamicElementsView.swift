//
//  SwiftUIView.swift
//  
//
//  Created by Magno on 28/04/23.
//

import SwiftUI

/*
extension String: Identifiable {
    public var id: String {
        self
    }
}
*/

struct DynamicElementsView: View {
    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
    var body: some View {
        List {
            Section(header: Text("Important Information")) {
                Text("This List shows information about our restaurant pages")
                    .font(.headline)
            }
            Group {
                Text("conejo1")
                Text("conejo2")
                Text("conejo3")
                Text("conejo4")
            }
            ForEach(elements, id: \.self) {element in
                Text(element)
            }
            Section(footer: Text("More Information")){
                Text("Contact us as (212) 555 3231")
            }
            
            ForEach(elements, id: \.self) {element in
                Text(element)
                Text(" ")
                Text("JA!")
            }
        }
        .listStyle(.sidebar)
        .padding()
    }
}
