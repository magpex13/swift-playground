//
//  ReservationForm.swift
//  Little Lemon Demo
//
//  Created by Magno on 23/04/23.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type Your Name", text: $customerName, onEditingChanged: {
                status in print(status)
            })
                .onChange(of: customerName, perform: {
                    typedValue in print(typedValue)
                })
                .onSubmit {
                    print("Submitted!")
                }
                .padding()
        }
    }
}
